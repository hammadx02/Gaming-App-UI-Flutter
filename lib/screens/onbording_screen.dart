import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class OnBoarding extends StatefulWidget {
  int currentIndex = 0;
  
   OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<OnboardingContent> onBoardingContent = [
    OnboardingContent(
      image: 'images/boy1.png',
      title: 'Get Paid! Playing\nVideo Game',
      subTitle:
          'Earn points and real cash when\n you win a battle with no delay\n in cashing out',
    ),
    OnboardingContent(
      image: 'images/boy2.png',
      title: 'Schedule Games\n With Friends',
      subTitle:
          'Easily create an upcoming\n event and get ready for battle.\n Yeah! real combat fella.',
    ),
    OnboardingContent(
      image: 'images/boy3.png',
      title: 'Text, Audio and\n Video Chat',
      subTitle:
          'Intuitive real life experience on\n mobile. Chat with fellow\n gamers before and after\n combat for free!',
    ),
  ];

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: onBoardingContent.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 66.0),
                      child: Image.asset(
                        onBoardingContent[index].image,
                        height: 232,
                        width: 327,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 36),
                      child: Text(
                        onBoardingContent[index].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontFamily: 'Poppins Bold',
                          color: themeColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 63),
                      child: Text(
                        onBoardingContent[index].subTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins Regular',
                          color: blackColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 63),
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
                  ],
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: pageController, // PageController
            count: onBoardingContent.length,
            effect: WormEffect(
              dotColor: themeColor.withOpacity(0.2),
              activeDotColor: themeColor,
              dotHeight: 10,
              dotWidth: 10,
            ), // your preferred effect
            onDotClicked: (index) {},
          ),
          const SizedBox(
            height: 42,
          ),
        ],
      ),
    );
  }
}

class OnboardingContent {
  final String image;
  final String title;
  final String subTitle;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}
