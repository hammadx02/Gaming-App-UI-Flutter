import 'package:flutter/material.dart';
import 'package:gaming_app_ui/onbording_screen2.dart';

import 'constents.dart';

class OnBordingScreen1 extends StatefulWidget {
  const OnBordingScreen1({super.key});

  @override
  State<OnBordingScreen1> createState() => _OnBordingScreen1State();
}

class _OnBordingScreen1State extends State<OnBordingScreen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 164, left: 66),
                child: Image(
                  image: AssetImage('images/boy1.png'),
                  width: 327,
                  height: 232,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'Get Paid! Playing\nVideo Game',
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
                  'Earn points and real cash when\n you win a battle with no delay\n in cashing out',
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
                        builder: (context) => const OnBordingScreen2(),
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
