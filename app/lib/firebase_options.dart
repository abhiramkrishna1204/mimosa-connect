// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.

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
    apiKey: 'AIzaSyAXi1H0bT7Eg3DtRrmfT3JyHdLI9bjmKr4',
    appId: '1:1090932682926:web:c452d3d6afbbee639c7d3f',
    messagingSenderId: '1090932682926',
    projectId: 'mimosa-epicmakers',
    authDomain: 'mimosa-epicmakers.firebaseapp.com',
    storageBucket: 'mimosa-epicmakers.appspot.com',
    measurementId: 'G-558V1GZQD4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYVIZNMqdEjIl9Y2C47pjS1rykz173Rdo',
    appId: '1:1090932682926:android:8bcdfb9853c8038a9c7d3f',
    messagingSenderId: '1090932682926',
    projectId: 'mimosa-epicmakers',
    storageBucket: 'mimosa-epicmakers.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD10YSH-XANwbRhEfS2WdjEVcyNnNsXWh4',
    appId: '1:1090932682926:ios:e7373c67295c39829c7d3f',
    messagingSenderId: '1090932682926',
    projectId: 'mimosa-epicmakers',
    storageBucket: 'mimosa-epicmakers.appspot.com',
    iosClientId:
        '1090932682926-hsblm7dh2hbj7lnjolc1ut3sr9ap4q44.apps.googleusercontent.com',
    iosBundleId: 'com.mimosa.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD10YSH-XANwbRhEfS2WdjEVcyNnNsXWh4',
    appId: '1:1090932682926:ios:e7373c67295c39829c7d3f',
    messagingSenderId: '1090932682926',
    projectId: 'mimosa-epicmakers',
    storageBucket: 'mimosa-epicmakers.appspot.com',
    iosClientId:
        '1090932682926-hsblm7dh2hbj7lnjolc1ut3sr9ap4q44.apps.googleusercontent.com',
    iosBundleId: 'com.mimosa.app',
  );
}
