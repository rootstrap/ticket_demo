import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (kIsWeb) {
      // Web
      return const FirebaseOptions(
          appId: '',
          apiKey: '',
          projectId: '',
          messagingSenderId: '');
    } else if (Platform.isIOS || Platform.isMacOS) {
      return const FirebaseOptions(
          appId: '',
          apiKey: '',
          projectId: '',
          messagingSenderId: '');
    } else {
      // Android
      return const FirebaseOptions(
        appId: '',
        apiKey: '',
        projectId: '',
        messagingSenderId: '',
      );
    }
  }
}
