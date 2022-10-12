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
    apiKey: 'AIzaSyAMujJIJ6gfIXi5B1LozkUzAeLfnxnJJRI',
    appId: '1:656937066727:web:cc7d683e5f449053218242',
    messagingSenderId: '656937066727',
    projectId: 'boom-boom-dcdce',
    authDomain: 'boom-boom-dcdce.firebaseapp.com',
    storageBucket: 'boom-boom-dcdce.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBFPuGHap11IiuzLEp1sIJM_k_vLvJI584',
    appId: '1:656937066727:android:27a3ecf6a0cd9d13218242',
    messagingSenderId: '656937066727',
    projectId: 'boom-boom-dcdce',
    storageBucket: 'boom-boom-dcdce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhWmF5CW-4gw54n09oZuvqQWARjL1Bmno',
    appId: '1:656937066727:ios:ef0ae2261e9dd3ff218242',
    messagingSenderId: '656937066727',
    projectId: 'boom-boom-dcdce',
    storageBucket: 'boom-boom-dcdce.appspot.com',
    iosClientId: '656937066727-8o815alqq48bp56a8emecgf058qi5a7u.apps.googleusercontent.com',
    iosBundleId: 'com.example.lec1110',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAhWmF5CW-4gw54n09oZuvqQWARjL1Bmno',
    appId: '1:656937066727:ios:ef0ae2261e9dd3ff218242',
    messagingSenderId: '656937066727',
    projectId: 'boom-boom-dcdce',
    storageBucket: 'boom-boom-dcdce.appspot.com',
    iosClientId: '656937066727-8o815alqq48bp56a8emecgf058qi5a7u.apps.googleusercontent.com',
    iosBundleId: 'com.example.lec1110',
  );
}