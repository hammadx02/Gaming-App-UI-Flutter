import 'package:flutter/material.dart';
import 'package:gaming_app_ui/screens/onbording_screen1.dart';

import 'onbording_screen2.dart';
import 'onbording_screen3.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        children: const [
          OnBordingScreen1(),
          OnBordingScreen2(),
          OnBordingScreen3()
        ],
      ),
    );
  }
}
