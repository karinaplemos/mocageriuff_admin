import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDHwLvDnkSw2vPjTO4De6Bgmt4wBtQ4MiM',
    appId: '1:7966748720:web:7b8b58d1aaf2977729fdf5',
    messagingSenderId: '7966748720',
    projectId: 'moca-geriuff',
    authDomain: 'moca-geriuff.firebaseapp.com',
    databaseURL: 'https://moca-geriuff-default-rtdb.firebaseio.com',
    storageBucket: 'moca-geriuff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwf7z8ZKg7BLZ-Pl_1_YYL2HhCWznzbuw',
    appId: '1:7966748720:android:fdcb202e7041797429fdf5',
    messagingSenderId: '7966748720',
    projectId: 'moca-geriuff',
    databaseURL: 'https://moca-geriuff-default-rtdb.firebaseio.com',
    storageBucket: 'moca-geriuff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6LdT2xd5VToR6BD-escMmiEdVCZ1dyr0',
    appId: '1:7966748720:ios:61938bed9413c37429fdf5',
    messagingSenderId: '7966748720',
    projectId: 'moca-geriuff',
    databaseURL: 'https://moca-geriuff-default-rtdb.firebaseio.com',
    storageBucket: 'moca-geriuff.appspot.com',
    iosClientId:
        '7966748720-5ju9524keqe1rjds4t4t4lai6rpsf8g6.apps.googleusercontent.com',
    iosBundleId: 'com.example.projetoFinalDoctorInterface',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6LdT2xd5VToR6BD-escMmiEdVCZ1dyr0',
    appId: '1:7966748720:ios:4db667c4a404b70129fdf5',
    messagingSenderId: '7966748720',
    projectId: 'moca-geriuff',
    databaseURL: 'https://moca-geriuff-default-rtdb.firebaseio.com',
    storageBucket: 'moca-geriuff.appspot.com',
    iosClientId:
        '7966748720-ho8ru33i14hsii401m7a7jcoidadt0uf.apps.googleusercontent.com',
    iosBundleId: 'com.example.projetoFinalDoctorInterface.RunnerTests',
  );
}
