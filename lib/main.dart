import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'startScreen.dart'; // your custom start screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCtVUliSb9CR_GUDWVCAP7YwcbSaOiWOzk",
      authDomain: "learning-flutter-478bd.firebaseapp.com",
      projectId: "learning-flutter-478bd",
      storageBucket: "learning-flutter-478bd.appspot.com",
      messagingSenderId: "887624732505",
      appId: "1:887624732505:web:15556fbd03d55082ab8648",
      measurementId: "G-RBHNEWTRCV",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Game',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const StartScreen(),
    );
  }
}
