import 'package:announcement/presentation/screens/home_screen.dart';
import 'package:announcement/presentation/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AnnouncementApp extends StatelessWidget {
  const AnnouncementApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.light,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance
            .authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData && snapshot.data != null) {
            return HomeScreen();
          }
          return SignInScreen();
        },
      ),
    );
  }
}
