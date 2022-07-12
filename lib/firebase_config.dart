import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (kIsWeb) {
      // Web
      return const FirebaseOptions(
          appId: '1:99063270151:android:9ef27a9f12c216636293a2',
          apiKey: 'AIzaSyDYF9DGRRv5NSxcjUPlJ_hFhmf8oepdhnA',
          projectId: 'ticketdemo-c2ee0',
          messagingSenderId: '99063270151');
    } else if (Platform.isIOS || Platform.isMacOS) {
      return const FirebaseOptions(
          appId: '1:99063270151:ios:a96caa5c130654766293a2',
          apiKey: 'AIzaSyArxKBatGxmzUhQbGb7anCEpp51Aqd',
          projectId: 'ticketdemo-c2ee0',
          messagingSenderId: '99063270151');
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:99063270151:android:9ef27a9f12c216636293a2',
        apiKey: 'AIzaSyDYF9DGRRv5NSxcjUPlJ_hFhmf8oepdhnA',
        projectId: 'ticketdemo-c2ee0',
        messagingSenderId: '99063270151',
      );
    }
  }
}
