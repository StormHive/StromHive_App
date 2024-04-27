import 'package:flutter/material.dart';
import 'package:stormhive/splash.dart';

void main() {
  runApp(const StormHive());
}

class StormHive extends StatelessWidget {
  const StormHive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Storm Hive',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}