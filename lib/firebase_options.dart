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
    apiKey: 'AIzaSyBuvAZkxTJ01CdTPgeXYXyBYABR6bTnHPE',
    appId: '1:725552501029:web:c0b4ab4ef1381bcfb1cacc',
    messagingSenderId: '725552501029',
    projectId: 'lexilearn-ac903',
    authDomain: 'lexilearn-ac903.firebaseapp.com',
    storageBucket: 'lexilearn-ac903.appspot.com',
    measurementId: 'G-78E0J33FQ9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsjbp-KXavs-pv7jyQbsUSpwgzu1qTYvc',
    appId: '1:725552501029:android:cfef38cfb381806db1cacc',
    messagingSenderId: '725552501029',
    projectId: 'lexilearn-ac903',
    storageBucket: 'lexilearn-ac903.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGZZsHDNJxdoJoCyR9wsekbe9zYgeTsH4',
    appId: '1:725552501029:ios:0163d8f1c3165022b1cacc',
    messagingSenderId: '725552501029',
    projectId: 'lexilearn-ac903',
    storageBucket: 'lexilearn-ac903.appspot.com',
    iosBundleId: 'com.example.lexilearn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBGZZsHDNJxdoJoCyR9wsekbe9zYgeTsH4',
    appId: '1:725552501029:ios:c19cfb7eccb6f424b1cacc',
    messagingSenderId: '725552501029',
    projectId: 'lexilearn-ac903',
    storageBucket: 'lexilearn-ac903.appspot.com',
    iosBundleId: 'com.example.lexilearn.RunnerTests',
  );
}
