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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyABNNisjtlKD6BxSFvrVB-OT7Z3ut6TrGM',
    appId: '1:441827924243:web:1bdeb53059b1e0873a62e6',
    messagingSenderId: '441827924243',
    projectId: 'project-mobile-f7cf7',
    authDomain: 'project-mobile-f7cf7.firebaseapp.com',
    storageBucket: 'project-mobile-f7cf7.appspot.com',
    measurementId: 'G-E74BBRW0HY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAddHk8iRNk824N5ByNRBJJ7xYXNU09Tio',
    appId: '1:441827924243:android:68c99de837bfecf43a62e6',
    messagingSenderId: '441827924243',
    projectId: 'project-mobile-f7cf7',
    storageBucket: 'project-mobile-f7cf7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBv8NKIqC5-a17h6IpWEFGxHAPHxvwdnZY',
    appId: '1:441827924243:ios:54e6e6ba2c9af4113a62e6',
    messagingSenderId: '441827924243',
    projectId: 'project-mobile-f7cf7',
    storageBucket: 'project-mobile-f7cf7.appspot.com',
    androidClientId: '441827924243-a86ndvq4t0vnbrasbd5kkd6qh242lpc5.apps.googleusercontent.com',
    iosClientId: '441827924243-ersmru4ohe1l8pfnm28livvf4s5jpvlv.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobile',
  );
}
