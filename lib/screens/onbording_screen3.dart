import 'package:flutter/material.dart';
import 'package:gaming_app_ui/components/button.dart';

import '../constents/constents.dart';


class OnBordingScreen3 extends StatefulWidget {
  const OnBordingScreen3({super.key});

  @override
  State<OnBordingScreen3> createState() => _OnBordingScreen3State();
}

class _OnBordingScreen3State extends State<OnBordingScreen3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 144, left: 30, right: 30),
                child: Image(
                  image: AssetImage('images/boy3.png'),
                  width: 316,
                  height: 294,
                ),
              ),
              const Text(
                'Text, Audio and\n Video Chat',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins Bold',
                  color: themeColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 36),
                child: Text(
                  'Intuitive real life experience on\n mobile. Chat with fellow\n gamers before and after\n combat for free!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins Regular',
                    color: blackColor,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 38.0),
                child: MyButton(
                  title: 'Let’s Combat!',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
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
