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
    apiKey: 'AIzaSyBNC4idqaIzFBNQlBPFUjrRk2VeaGnC5Fk',
    appId: '1:619760148348:web:e4761aabffd017c4be4ef9',
    messagingSenderId: '619760148348',
    projectId: 'quiz-app-dc178',
    authDomain: 'quiz-app-dc178.firebaseapp.com',
    storageBucket: 'quiz-app-dc178.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGI4cX8CCXITzFRGWTGO6qo_BbSY8hOi0',
    appId: '1:619760148348:android:5b454d646b4112f6be4ef9',
    messagingSenderId: '619760148348',
    projectId: 'quiz-app-dc178',
    storageBucket: 'quiz-app-dc178.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAeZz4YU6vs_8HAISM4Xz0MEVrraeCpoWc',
    appId: '1:619760148348:ios:3e45247eb08aa0bbbe4ef9',
    messagingSenderId: '619760148348',
    projectId: 'quiz-app-dc178',
    storageBucket: 'quiz-app-dc178.appspot.com',
    iosClientId: '619760148348-7ugeqvi4m890ifctpisdghrrpbuhbj3a.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAeZz4YU6vs_8HAISM4Xz0MEVrraeCpoWc',
    appId: '1:619760148348:ios:3e45247eb08aa0bbbe4ef9',
    messagingSenderId: '619760148348',
    projectId: 'quiz-app-dc178',
    storageBucket: 'quiz-app-dc178.appspot.com',
    iosClientId: '619760148348-7ugeqvi4m890ifctpisdghrrpbuhbj3a.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizApp',
  );
}
