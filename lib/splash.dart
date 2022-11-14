import 'dart:async';

import 'package:flutter/material.dart';
import 'package:period_tracker/main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Center(
        child: Image.asset(
          'assets/images/m.png',
          scale: 2.0,
        ),
      ), // <-- SEE HERE
    );
  }
}
