import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:my_app/constant/styles.dart';
import 'package:my_app/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image(image: AssetImage("assets/icon-modified.png"),height: 300, width: 300,),
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: const stream(),
      backgroundColor: Colors.black,
    );
  }
}
