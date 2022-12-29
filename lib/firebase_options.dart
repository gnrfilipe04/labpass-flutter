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
    apiKey: 'AIzaSyD-az_ATIGegPN2AhXuZw2PaiBhKYYV350',
    appId: '1:64198250262:web:0c5a1faaeb31955442ca37',
    messagingSenderId: '64198250262',
    projectId: 'labpass-flutter',
    authDomain: 'labpass-flutter.firebaseapp.com',
    storageBucket: 'labpass-flutter.appspot.com',
    measurementId: 'G-VWSFPB877B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbC6U_krgSNX1Z1CR75YF27_OIj6hCfzI',
    appId: '1:64198250262:android:210fac4890adedca42ca37',
    messagingSenderId: '64198250262',
    projectId: 'labpass-flutter',
    storageBucket: 'labpass-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8cqJY8_4CeBSy-FIZ1DFE9XL8A0pT8BE',
    appId: '1:64198250262:ios:91a4aca938b0000042ca37',
    messagingSenderId: '64198250262',
    projectId: 'labpass-flutter',
    storageBucket: 'labpass-flutter.appspot.com',
    iosClientId: '64198250262-9ns6h3he6ch9k37f4rbs9so7kb343e1j.apps.googleusercontent.com',
    iosBundleId: 'com.example.labpass',
  );
}