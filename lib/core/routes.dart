import 'package:announcement/domain/models/announcement_model.dart';
import 'package:announcement/presentation/screens/detail_screen.dart';
import 'package:announcement/presentation/screens/main_screen.dart';
import 'package:announcement/presentation/screens/sign_in_screen.dart';
import 'package:announcement/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

sealed class AppRoute {
  static signUpToSignIn(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignInScreen()));
  }

  static signInToSignUp(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignUpScreen()));
  }

  static signInToHome(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MainScreen()));
  }

  static homeToSignIn(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignInScreen()));
  }

  static feedToDetail(BuildContext context, Announcement announcement) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen(announcement: announcement)));
  }
}