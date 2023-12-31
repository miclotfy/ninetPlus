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
    apiKey: 'AIzaSyC01D3R3Gwmwr7se3MePESNOaKLXb6lo0Y',
    appId: '1:8455204611:web:2cba04535d71344c0f4336',
    messagingSenderId: '8455204611',
    projectId: 'tplus-ab0c2',
    authDomain: 'tplus-ab0c2.firebaseapp.com',
    storageBucket: 'tplus-ab0c2.appspot.com',
    measurementId: 'G-B7N0P11YV8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0AWfNmPKYa5J2vThTJE5tfOwZV7iXz0Y',
    appId: '1:8455204611:android:4c23e4172d83d8470f4336',
    messagingSenderId: '8455204611',
    projectId: 'tplus-ab0c2',
    storageBucket: 'tplus-ab0c2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMh4cGsI9EPh7FpAZHzX0gpkYI_aFts_0',
    appId: '1:8455204611:ios:742d9a44346d95a70f4336',
    messagingSenderId: '8455204611',
    projectId: 'tplus-ab0c2',
    storageBucket: 'tplus-ab0c2.appspot.com',
    iosClientId: '8455204611-qvb6l3hgnc70ak7r3u4bm0o903f6ejd9.apps.googleusercontent.com',
    iosBundleId: 'com.example.test',
  );
}
