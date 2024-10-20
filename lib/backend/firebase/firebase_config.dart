import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDyyJC4Ie5BwRpbQV3_2fbVzVfh4hiFvoA",
            authDomain: "eru-emergency-902d9.firebaseapp.com",
            projectId: "eru-emergency-902d9",
            storageBucket: "eru-emergency-902d9.appspot.com",
            messagingSenderId: "117958515496",
            appId: "1:117958515496:web:51025332596132f6dd4e1d"));
  } else {
    await Firebase.initializeApp();
  }
}
