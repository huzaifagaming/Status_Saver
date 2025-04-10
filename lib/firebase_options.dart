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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCGIs_q7_S4SruFlW2di74GmW5erZ81uUs',
    appId: '1:833195614321:web:5fd26d92e395a8ba487bd0',
    messagingSenderId: '833195614321',
    projectId: 'my-project-4376-1706809619586',
    authDomain: 'my-project-4376-1706809619586.firebaseapp.com',
    storageBucket: 'my-project-4376-1706809619586.appspot.com',
    measurementId: 'G-ESPD9SMWBJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrdtDsLD8QMwGIUFQI0w1H5JqDgULiDgQ',
    appId: '1:833195614321:android:85b8e24ab571b2c4487bd0',
    messagingSenderId: '833195614321',
    projectId: 'my-project-4376-1706809619586',
    storageBucket: 'my-project-4376-1706809619586.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZkGQWtcMaLsJpYPmgmZ6FxcnmPY6H3Rg',
    appId: '1:833195614321:ios:75f19cf0b4a27d88487bd0',
    messagingSenderId: '833195614321',
    projectId: 'my-project-4376-1706809619586',
    storageBucket: 'my-project-4376-1706809619586.appspot.com',
    iosBundleId: 'com.example.statussaver',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZkGQWtcMaLsJpYPmgmZ6FxcnmPY6H3Rg',
    appId: '1:833195614321:ios:75f19cf0b4a27d88487bd0',
    messagingSenderId: '833195614321',
    projectId: 'my-project-4376-1706809619586',
    storageBucket: 'my-project-4376-1706809619586.appspot.com',
    iosBundleId: 'com.example.statussaver',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCGIs_q7_S4SruFlW2di74GmW5erZ81uUs',
    appId: '1:833195614321:web:152e30bee7e11102487bd0',
    messagingSenderId: '833195614321',
    projectId: 'my-project-4376-1706809619586',
    authDomain: 'my-project-4376-1706809619586.firebaseapp.com',
    storageBucket: 'my-project-4376-1706809619586.appspot.com',
    measurementId: 'G-56962T2B91',
  );
}
