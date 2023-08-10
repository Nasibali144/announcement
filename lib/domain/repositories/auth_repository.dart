import 'package:announcement/core/folder_names.dart';
import 'package:announcement/domain/models/member/member_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class AuthRepository {
  Future<User?> signIn(String email, String password);
  Future<User?> signUp(String username, String email, String password);
  Future<void> signOut();
  Future<void> deleteAccount();
  User? get user;
}

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth auth;
  final FirebaseDatabase database;
  final FirebaseStorage storage;

  const AuthRepositoryImpl({required this.auth, required this.storage, required this.database});

  @override
  Future<User?> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(email: email, password: password);
      final user = credential.user!;
      final member = Member(uid: user.uid, name: user.displayName!, email: email, imageUrl: "", createdAt: DateTime.now().toIso8601String());
      final folder = database.ref(Folder.user);
      final file = folder.child(member.uid);
      await file.set(member.toJson());
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
  Future<void> deleteAccount() async {
    await auth.currentUser?.delete();
  }

  @override
  User? get user => auth.currentUser;
}