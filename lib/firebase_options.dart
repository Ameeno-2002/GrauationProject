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
    apiKey: 'AIzaSyBGhy_vfVjf3zquPI6rCXBfWsp2XaSdISI',
    appId: '1:793451255333:web:08d8de499882edb16591cc',
    messagingSenderId: '793451255333',
    projectId: 'flutterfirebasetest-a763a',
    authDomain: 'flutterfirebasetest-a763a.firebaseapp.com',
    storageBucket: 'flutterfirebasetest-a763a.appspot.com',
    measurementId: 'G-JQY04C5PB8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfpFsalc3iN17yC9hozuHaZAKofaui36k',
    appId: '1:793451255333:android:27f4a4f2b08c508d6591cc',
    messagingSenderId: '793451255333',
    projectId: 'flutterfirebasetest-a763a',
    storageBucket: 'flutterfirebasetest-a763a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABQVOPesHmSt2C9yqsTYJE9DSyccDb-Ig',
    appId: '1:793451255333:ios:34e8b6273d145ca86591cc',
    messagingSenderId: '793451255333',
    projectId: 'flutterfirebasetest-a763a',
    storageBucket: 'flutterfirebasetest-a763a.appspot.com',
    iosBundleId: 'com.example.flutterApplication3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABQVOPesHmSt2C9yqsTYJE9DSyccDb-Ig',
    appId: '1:793451255333:ios:70e2742d5cec8c2c6591cc',
    messagingSenderId: '793451255333',
    projectId: 'flutterfirebasetest-a763a',
    storageBucket: 'flutterfirebasetest-a763a.appspot.com',
    iosBundleId: 'com.example.flutterApplication3.RunnerTests',
  );
}
