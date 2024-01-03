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
    apiKey: 'AIzaSyCrSHescdKQ_I_FtiIwTskmLSJ4HlMow4k',
    appId: '1:100146049910:web:15878e1cf46e0badf28057',
    messagingSenderId: '100146049910',
    projectId: 'foodapp-30ea5',
    authDomain: 'foodapp-30ea5.firebaseapp.com',
    storageBucket: 'foodapp-30ea5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOWPwsksEABWiqrE2R92dNoiFxNOOuFa8',
    appId: '1:100146049910:android:b538ce228a6bafb5f28057',
    messagingSenderId: '100146049910',
    projectId: 'foodapp-30ea5',
    storageBucket: 'foodapp-30ea5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAtsnNqTSSdRT9FF09h3snqPh5PBnhLlwQ',
    appId: '1:100146049910:ios:765ca5a516602b5af28057',
    messagingSenderId: '100146049910',
    projectId: 'foodapp-30ea5',
    storageBucket: 'foodapp-30ea5.appspot.com',
    iosClientId: '100146049910-jhbhael1v96lafmvdt5968cbdkavdtr7.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAtsnNqTSSdRT9FF09h3snqPh5PBnhLlwQ',
    appId: '1:100146049910:ios:66b12003ae7f11baf28057',
    messagingSenderId: '100146049910',
    projectId: 'foodapp-30ea5',
    storageBucket: 'foodapp-30ea5.appspot.com',
    iosClientId: '100146049910-ldensg8h12q96s3l8qn58op0r20k8hb3.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodApp.RunnerTests',
  );
}
