import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAjm29ADxN862NXpXO0U7nPRA839Brft9s",
            authDomain: "emergencias-muni-cba-wt768q.firebaseapp.com",
            projectId: "emergencias-muni-cba-wt768q",
            storageBucket: "emergencias-muni-cba-wt768q.appspot.com",
            messagingSenderId: "887760858011",
            appId: "1:887760858011:web:fed0452d6cebfc7be48f3e"));
  } else {
    await Firebase.initializeApp();
  }
}
