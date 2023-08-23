import 'dart:convert';
import 'dart:io';

import 'package:announcement/core/folder_names.dart';
import 'package:announcement/data/device_info_data_source/device_info_data_source.dart';
import 'package:announcement/data/fcm_data_source/fcm_data_source.dart';
import 'package:announcement/domain/models/member/member_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

abstract class AuthRepository {
  Future<User?> signIn(String email, String password);
  Future<User?> signUp(String username, String email, String password);
  Future<void> signOut();
  Future<bool> deleteAccount(String password);
  Future<Member> gerUserInfo({String? uid});
  User? get user;
}

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth auth;
  final FirebaseDatabase database;
  final FirebaseStorage storage;
  final DeviceInfoDataSource deviceInfo;
  final FCMDataSource fcm;

  const AuthRepositoryImpl({required this.auth, required this.storage, required this.database, required this.deviceInfo, required this.fcm});

  @override
  Future<User?> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(email: email, password: password);
      final user = credential.user!;
      final memberPath = database.ref(Folder.user).child(user.uid);
      final memberJson = await memberPath.get();

      final member = Member.fromJson(Map<String, Object?>.from(jsonDecode(jsonEncode(memberJson.value)) as Map));
      final deviceToken = await fcm.fcmToken;
      print("TOKEN: $deviceToken");
      final deviceId = await deviceInfo.deviceId;
      final deviceType = Platform.isAndroid ? "A" : Platform.isIOS ? "I" : "O";

      final device = Device(deviceId: deviceId, deviceType: deviceType, deviceToken: deviceToken!,);
      final devices = List.from(member.device);

      devices.removeWhere((element) => element.deviceId == device.deviceId);
      devices.add(device);
      await memberPath.update({
        "device": devices.map((e) => e.toJson()).toList(),
      });

      return credential.user;
    } catch(e) {
      return null;
    }
  }

  @override
  Future<User?> signUp(String username, String email, String password) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      final user = credential.user!;
      await user.updateDisplayName(username);
      final member = Member(uid: user.uid, name: username, email: email, imageUrl: "", createdAt: DateTime.now().toIso8601String());
      final folder = database.ref(Folder.user);
      final file = folder.child(member.uid);
      await file.set(member.toJson());
      return user;
    } catch(e) {
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    await auth.signOut();
  }

  @override
  Future<bool> deleteAccount(String password) async {
    try{
      await auth.signInWithEmailAndPassword(email: user!.email!, password: password);
      final uid = user!.uid;
      await auth.currentUser!.delete();

      final folder = database.ref(Folder.user);
      final result = await folder.child(uid).get();
      final member = Member.fromJson(Map<String, Object?>.from(result.value as Map));
      for (var id in member.announcements) {
        /// TODO announcementdagi rasmlarni ham, o'chirish kerak
        await database.ref(Folder.announcement).child(id).remove();
      }

      await folder.child(uid).remove();
      return true;
    } catch(e) {
      debugPrint(e.toString());
      return false;
    }
  }

  @override
  Future<Member> gerUserInfo({String? uid}) async {
    final result = await database.ref(Folder.user).child(uid ?? auth.currentUser!.uid).get();
    return Member.fromJson(Map<String, Object?>.from(result.value as Map));
  }

  @override
  User? get user => auth.currentUser;
}