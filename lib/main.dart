import 'dart:async';
import 'package:announcement/core/service_locator.dart';
import 'package:announcement/presentation/blocs/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'firebase_options.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = AnnouncementBlocObserver();
    await Firebase.initializeApp(
      name: "announcement",
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    analytics.logEvent(name: "App Opened");

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    await setupLocator();

    runApp(const AnnouncementApp());
  }, (Object error, StackTrace stackTrace) {
    /// alternative => runZonedGuarded
    // PlatformDispatcher.instance.onError = (error, stack) {
    //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    //   return true;
    // };

    FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
  });
}
