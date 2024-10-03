// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyBflJY01gDUth0XT_43FifRvkjUK_fxnxo',
    appId: '1:906622397102:web:ca4bcbd62c8e10a5389b3f',
    messagingSenderId: '906622397102',
    projectId: 'tripmate-1683b',
    authDomain: 'tripmate-1683b.firebaseapp.com',
    storageBucket: 'tripmate-1683b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwI9Vc1-3c51mGXkjGBOMlGhmc988i_lU',
    appId: '1:906622397102:android:1eac9f5589021e2c389b3f',
    messagingSenderId: '906622397102',
    projectId: 'tripmate-1683b',
    storageBucket: 'tripmate-1683b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCqZsXf9VjcvDZB7M0_s17OrTpfE8dn2Uw',
    appId: '1:906622397102:ios:d5578b4133abd54e389b3f',
    messagingSenderId: '906622397102',
    projectId: 'tripmate-1683b',
    storageBucket: 'tripmate-1683b.appspot.com',
    iosBundleId: 'com.example.tripmate',
  );
}