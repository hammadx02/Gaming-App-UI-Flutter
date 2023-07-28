import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gaming_app_ui/onbording_screen1.dart';

import 'constents.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnBordingScreen1(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: themeColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  image: AssetImage(
                    'images/logo.png',
                  ),
                  width: 178.91,
                  height: 105.85,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
