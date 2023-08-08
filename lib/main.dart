import 'package:announcement/core/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    name: "announcement",
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await setupLocator();

  runApp(const AnnouncementApp());
}

