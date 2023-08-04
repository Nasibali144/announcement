import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> signIn(String email, String password);
  Future<User?> signUp(String username, String email, String password);
  Future<void> signOut();
  Future<void> deleteAccount();
  User? get user;
}

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth auth;
  const AuthRepositoryImpl({required this.auth});

  @override
  Future<User?> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch(e) {
      return null;
    }
  }

  @override
  Future<User?> signUp(String username, String email, String password) async {

    try {
      final credential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      await credential.user?.updateDisplayName(username);
      return credential.user;
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