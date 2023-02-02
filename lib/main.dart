import 'package:flutter/material.dart';
import 'package:my_app/screens/introScreens/onBoarding.dart';

import 'constant/styles.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onBoarding(),
      theme: ThemeData(
        primaryColor: primary,
      ),
    );
  }
}
