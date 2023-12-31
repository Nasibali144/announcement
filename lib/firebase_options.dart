// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCaCbfQskTIasbYqwnuwm_8woDIaJ75SmY',
    appId: '1:417994147501:web:c34d51aafd1170ba446824',
    messagingSenderId: '417994147501',
    projectId: 'learn-network-pdp',
    authDomain: 'learn-network-pdp.firebaseapp.com',
    databaseURL: 'https://learn-network-pdp-default-rtdb.firebaseio.com',
    storageBucket: 'learn-network-pdp.appspot.com',
    measurementId: 'G-TMF7DXZDEL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6mJs1dA0UsXit2O-_nWkYW85GIohjQdk',
    appId: '1:417994147501:android:634509f73bc669d2446824',
    messagingSenderId: '417994147501',
    projectId: 'learn-network-pdp',
    databaseURL: 'https://learn-network-pdp-default-rtdb.firebaseio.com',
    storageBucket: 'learn-network-pdp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClIeaOwWIowcFPHWJApl1Ns5JJ0by5slw',
    appId: '1:417994147501:ios:f0b0edd980e1988a446824',
    messagingSenderId: '417994147501',
    projectId: 'learn-network-pdp',
    databaseURL: 'https://learn-network-pdp-default-rtdb.firebaseio.com',
    storageBucket: 'learn-network-pdp.appspot.com',
    iosClientId: '417994147501-mht6ape3g5i791t288e8ppj6d9mmoq6u.apps.googleusercontent.com',
    iosBundleId: 'com.pdp.b28.announcement',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClIeaOwWIowcFPHWJApl1Ns5JJ0by5slw',
    appId: '1:417994147501:ios:7a9103ecc86d1af1446824',
    messagingSenderId: '417994147501',
    projectId: 'learn-network-pdp',
    databaseURL: 'https://learn-network-pdp-default-rtdb.firebaseio.com',
    storageBucket: 'learn-network-pdp.appspot.com',
    iosClientId: '417994147501-pem434hp8qkovo046o472o7883g3s99c.apps.googleusercontent.com',
    iosBundleId: 'com.pdp.b28.announcement.RunnerTests',
  );
}
