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
    apiKey: 'AIzaSyD117dg8YtSCdQgGa-41BJeXuY7L1tm-xY',
    appId: '1:847510088475:web:911a9e43c4354f01fb01be',
    messagingSenderId: '847510088475',
    projectId: 'idc-timetracker',
    authDomain: 'idc-timetracker.firebaseapp.com',
    storageBucket: 'idc-timetracker.appspot.com',
    measurementId: 'G-6SMG2G68H3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOn8l-0l64OqcAvdew-HC_iUy0Mz2NAB0',
    appId: '1:847510088475:android:110af9d2a7e25916fb01be',
    messagingSenderId: '847510088475',
    projectId: 'idc-timetracker',
    storageBucket: 'idc-timetracker.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHqzB5WiARyzuUTyZwxEsV2kOyTXK_Z5U',
    appId: '1:847510088475:ios:11fff3aeb916f085fb01be',
    messagingSenderId: '847510088475',
    projectId: 'idc-timetracker',
    storageBucket: 'idc-timetracker.appspot.com',
    iosClientId: '847510088475-pd9j3naaiob6q27t79kfprho7gnl1ac3.apps.googleusercontent.com',
    iosBundleId: 'com.IDC.time-tracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAHqzB5WiARyzuUTyZwxEsV2kOyTXK_Z5U',
    appId: '1:847510088475:ios:6cb330937e770004fb01be',
    messagingSenderId: '847510088475',
    projectId: 'idc-timetracker',
    storageBucket: 'idc-timetracker.appspot.com',
    iosClientId: '847510088475-qq7g8tellni59k322r5usu5756vebur4.apps.googleusercontent.com',
    iosBundleId: 'com.example.timeTracker',
  );
}
