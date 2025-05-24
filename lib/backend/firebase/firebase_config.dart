import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCppKi2uAFWp7EKGzSIAZi4Ges956s1Saw",
            authDomain: "momentumdev-203a6.firebaseapp.com",
            projectId: "momentumdev-203a6",
            storageBucket: "momentumdev-203a6.firebasestorage.app",
            messagingSenderId: "635856928797",
            appId: "1:635856928797:web:f43ce0383b6c66cb1886f4",
            measurementId: "G-T75QN9N1Z3"));
  } else {
    await Firebase.initializeApp();
  }
}
