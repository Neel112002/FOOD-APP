import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDbz9UHrb4qkOfDmHbI8zrT65D1PmV0p1Q",
            authDomain: "food-app-e06d0.firebaseapp.com",
            projectId: "food-app-e06d0",
            storageBucket: "food-app-e06d0.firebasestorage.app",
            messagingSenderId: "984972200712",
            appId: "1:984972200712:web:841f90dc734f2f0bffbabd",
            measurementId: "G-2QYF4TFMQB"));
  } else {
    await Firebase.initializeApp();
  }
}
