import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/introScreens/onBoarding.dart';
import 'package:my_app/screens/introScreens/splashScreen.dart';

import 'constant/styles.dart';
import 'sevices/auth_services.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: primary,
      ),
    );
  }
}

class stream extends StatelessWidget {
  const stream({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Authservice().firebaseAuth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const home_page();
        }
        return onBoarding();
      },
    );
  }
}
