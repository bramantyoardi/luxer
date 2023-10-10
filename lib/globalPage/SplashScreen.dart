import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:luxer/globalPage/LandingPage.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color.fromARGB(255, 255, 250, 237),
      splash: Center(
        child: Image.asset("assets/images/plogo.png"),
      ),
      duration: 2500,
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: Landing(),
    );
  }
}
