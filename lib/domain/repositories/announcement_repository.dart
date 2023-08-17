import 'dart:async';
import 'dart:io';
import 'package:announcement/core/folder_names.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:announcement/domain/models/member/member_model.dart';
import 'package:announcement/domain/models/message/message_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart' as fn;

abstract class AnnouncementRepository {
  Future<bool> upload(Announcement announcement, List<File> files, String categoryName);
  Future<bool> delete(Announcement announcement);
  Future<bool> like(Announcement announcement, String uid);
  Stream<Announcement> data(String announcementId, String uid);
  Future<bool> writeMessage({required String announcementId, required String message, required Member user});
}

class AnnouncementRepositoryImpl implements AnnouncementRepository {
  final FirebaseDatabase database;
  final FirebaseStorage storage;

  const AnnouncementRepositoryImpl({required this.database, required this.storage});


  @override
  Future<bool> upload(Announcement announcement, List<File> files, String categoryName) async {
    try {
      /// storage
      final imageFolder = storage.ref(Folder.images);
      List<String> images = [];
      for(int i = 0; i < files.length; i++) {
        final path = "${announcement.name}_$i.${files[i].path.substring(files[i].path.lastIndexOf(".") + 1)}";
        await imageFolder.child(path).putFile(files[i]);
        final url = await imageFolder.child(path).getDownloadURL();
        images.add(url);
      }
      
      /// database: new store announcement
      final folder = database.ref(Folder.announcement);
      final file = folder.push();
      final data = announcement.copyWith(id: file.key ?? announcement.hashCode.toString(), images: images);
      file.set(data.toJson());

      /// database: add new announcement id in its category
      final categoryPath = database.ref(Folder.category).child(categoryName);
      final result = await categoryPath.get();
      final category = Category.fromJson(Map<String, Object?>.from(result.value as Map));
      await categoryPath.update({
        "announcements": [...category.announcements, data.id]
      });

      /// database: add new announcement id in member
      final memberPath = database.ref(Folder.user).child(announcement.userId);
      final memberJson = await memberPath.get();
      final member = Member.fromJson(Map<String, Object?>.from(memberJson.value as Map));
      await memberPath.update({
        "announcements": [...member.announcements, data.id]
      });

      return true;
    } catch(e) {
      return false;
    }
  }

  @override
  Future<bool> delete(Announcement announcement) async {
    try {
      /// remove images in storage
      for (var imageUrl in announcement.images) {
        await storage.refFromURL(imageUrl).delete();
      }

      /// database: delete announcement
      final folder = database.ref(Folder.announcement);
      await folder.child(announcement.id).remove();

      /// database: delete announcement id in its category
      final event = await database.ref(Folder.category).orderByChild("id").equalTo(announcement.categoryId).once();
      final category = Category.fromJson(Map<String, Object?>.from(event.snapshot.value as Map));
      final listIdCT = category.announcements;
      listIdCT.remove(announcement.id);
      await database.ref(Folder.category).child(category.name.toLowerCase()).update({"announcements": listIdCT});

      /// database: delete announcement id in member
      final memberPath = database.ref(Folder.user).child(announcement.userId);
      final memberJson = await memberPath.get();
      final member = Member.fromJson(Map<String, Object?>.from(memberJson.value as Map));
      final listIdMB = member.announcements;
      listIdMB.remove(announcement.id);
      await memberPath.update({"announcements": listIdMB});

      return true;
    } catch(e) {
      return false;
    }
  }

  @override
  Future<bool> like(Announcement announcement, String uid) async{
    try {
      final memberPath = database.ref(Folder.user).child(uid);
      final memberJson = await memberPath.get();
      final member = Member.fromJson(Map<String, Object?>.from(memberJson.value as Map));

      final folder = database.ref(Folder.announcement).child(announcement.id);
      final announcementJson = await folder.get();
      final newAnnouncement = Announcement.fromJson(Map<String, Object?>.from(announcementJson.value as Map));

      final List<String> modifyAnnouncement = [...newAnnouncement.likes];
      final List<String> modifyMember = [...member.likes];

      if(modifyAnnouncement.contains(uid)) {
        modifyAnnouncement.remove(uid);
      } else {
        modifyAnnouncement.add(uid);
      }

      if(modifyMember.contains(newAnnouncement.id)) {
        modifyMember.remove(newAnnouncement.id);
      } else {
        modifyMember.add(newAnnouncement.id);
      }

      await memberPath.update({"likes": modifyMember});
      await folder.update({"likes": modifyAnnouncement});

      return true;
    } catch (e) {
      fn.debugPrint(e.toString());
      return false;
    }
  }

  @override
  Stream<Announcement> data(String announcementId, String uid) {
    final transform = StreamTransformer<DatabaseEvent, Announcement>.fromHandlers(
      handleData: (snapshot, sink) {
        final item = Announcement.fromJson(Map<String, Object?>.from(snapshot.snapshot.value as Map));
        final result = item.discussion.map((message) => message.userId == uid ? message.copyWith(isMe: true) : message).toList();
        sink.add(item.copyWith(discussion: result));
      },
      handleError: (error, stackTrace, sink) {
        fn.debugPrint("Error: $error\nStackTrace: $stackTrace");
      },
      handleDone: (sink) {
        fn.debugPrint("Completed Transformation!");
      }
    );
    final stream = database.ref(Folder.announcement).child(announcementId).onValue.asBroadcastStream();
    return transform.bind(stream).asBroadcastStream();
  }

  @override
  Future<bool> writeMessage({required String announcementId, required String message, required Member user}) async {
    try {
      final path = database.ref(Folder.announcement).child(announcementId);
      final json = await path.get();
      fn.debugPrint("Json: $json");
      final announcement = Announcement.fromJson(Map<String, Object?>.from(json.value as Map));
      fn.debugPrint("Announcement: $announcement");

      final msg = Message(id: (announcement.discussion.length + 1).toString(), userId: user.uid, userName: user.name, userImage: user.imageUrl, createdAt: DateTime.now().toString(), modifyAt: DateTime.now().toString(), messages: message);

      await path.set(announcement.copyWith(discussion: [...announcement.discussion, msg]).toJson());
      return true;
    } catch(e,s) {
      fn.debugPrint("Error: $e, StackTrace: $s");
      return false;
    }
  }
}

