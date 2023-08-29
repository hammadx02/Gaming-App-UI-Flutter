import 'package:flutter/material.dart';
import 'package:gaming_app_ui/components/normal_button.dart';
import 'package:gaming_app_ui/constants/colors.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Center(
              child: Image(
                image: AssetImage(
                  'images/boy6.png',
                ),
                width: 195,
                height: 228,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Center(
              child: Text(
                'Forgot password?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins Bold',
                  color: themeColor,
                ),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Center(
              child: Text(
                'Enter your email address below and we\'ll\nsend you an email with instructions on\nhow to change your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins Regular',
                  color: blackColor,
                ),
              ),
            ),
            SizedBox(
              height: 68,
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
              height: 46,
            ),
            Center(
              child: NormalButton(title: 'Recover Password'),
            ),
          ],
        ),
      
    );
  }
}
