// ignore: file_names
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:stormhive/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSplashScreen(
          splash: 'assets/stormhive_icon.png',
          duration: 5000,
          nextScreen: HomePage(),
          splashTransition: SplashTransition.fadeTransition,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: AnimatedOpacity(
            opacity: 0,
            duration: Duration(milliseconds: 1000),
            child: Image.asset(
              'assets/stormhive_icon.png',
              width: 200,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
