import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDwCTGjTc0C3kHqzcbw4AaVziysg2wvBlc",
            authDomain: "momentum-84f61.firebaseapp.com",
            projectId: "momentum-84f61",
            storageBucket: "momentum-84f61.firebasestorage.app",
            messagingSenderId: "304484131141",
            appId: "1:304484131141:web:280995197795da2bafde2c",
            measurementId: "G-CT8KYYV0MY"));
  } else {
    await Firebase.initializeApp();
  }
}
