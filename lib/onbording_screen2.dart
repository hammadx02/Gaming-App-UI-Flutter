import 'package:flutter/material.dart';
import 'package:gaming_app_ui/onbording_screen3.dart';

import 'constents.dart';

class OnBordingScreen2 extends StatefulWidget {
  const OnBordingScreen2({super.key});

  @override
  State<OnBordingScreen2> createState() => _OnBordingScreen2State();
}

class _OnBordingScreen2State extends State<OnBordingScreen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 163, left: 44),
                child: Image(
                  image: AssetImage('images/boy2.png'),
                  width: 348,
                  height: 233,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'Schedule Games\n With Friends ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins Bold',
                    color: themeColor,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 36),
                child: Text(
                  'Easily create an upcoming\n event and get ready for battle.\n Yeah! real combat fella.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins Regular',
                    color: blackColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 73),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnBordingScreen3(),
                      ),
                    );
                  },
                  child: const Text(
                    'Skip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins Bold',
                      color: themeColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          color: themeColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        color: themeColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Opacity(
                      opacity: 0.2,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          color: themeColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
