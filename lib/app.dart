import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:announcement/presentation/blocs/data/data_bloc.dart';
import 'package:announcement/presentation/screens/main_screen.dart';
import 'package:announcement/presentation/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/service_locator.dart';

class AnnouncementApp extends StatelessWidget {
  const AnnouncementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => locator<AuthBloc>()),
        BlocProvider<AnnouncementBloc>(create: (context) => locator<AnnouncementBloc>()),
        BlocProvider<DataBloc>(create: (context) => locator<DataBloc>()..add(const DataCategoryEvent())),
      ],
      child: MaterialApp(
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode: ThemeMode.light,
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.hasData && snapshot.data != null) {
              return MainScreen();
            }
            return SignInScreen();
          },
        ),
      ),
    );
  }
}
