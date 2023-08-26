import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gaming_app_ui/screens/onbording_screen.dart';

import '../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        milliseconds: 3000,
      ),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoarding(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: themeColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image(
                  image: AssetImage(
                    'images/logo.png',
                  ),
                  width: 178.91,
                  height: 105.85,
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage(
                    'images/graphics.png',
                  ),
                  color: Colors.white,
                ),
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
