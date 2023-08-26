import 'package:flutter/material.dart';
import 'package:gaming_app_ui/components/buttons.dart';
import 'package:gaming_app_ui/components/circular_button.dart';

import '../constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 51),
                  child: Image(
                    image: AssetImage('images/boy5.png'),
                    width: 323,
                    height: 205,
                  ),
                ),
                const SizedBox(
                  height: 41,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52),
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Poppins Bold',
                      color: themeColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 52,
                  ),
                  child: Text(
                    'Hi, Kindly login to continue battle',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins Regular',
                      color: blackColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins Regular',
                        color: blackColor,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 52),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Image.asset(
                        'images/passicon.png',
                        height: 12,
                        width: 12,
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins Regular',
                        color: blackColor,
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: themeColor, width: 1.5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 52,
                      ),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins Regular',
                          color: blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
                const Center(
                  child: MyButton(title: 'Let’s Combat!'),
                ),
                const SizedBox(
                  height: 23,
                ),
                const Center(
                  child: Text(
                    'Connect With:',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins Bold',
                      color: themeColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularButton(
                        buttonText: 'G+',
                        buttonColor: Color(0xffF34A38),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircularButton(
                        buttonText: 'f',
                        buttonColor: Color(0xff2672CB),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Center(
                  child: Text(
                    'Don’t have an account? ',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins Regular',
                      color: blackColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins Bold',
                      color: themeColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
