import 'package:flutter/material.dart';
import 'package:gaming_app_ui/components/buttons.dart';
import 'package:gaming_app_ui/constants/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerficationScreen3 extends StatefulWidget {
  const VerficationScreen3({super.key});

  @override
  State<VerficationScreen3> createState() => _VerficationScreen3State();
}

class _VerficationScreen3State extends State<VerficationScreen3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 133,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 76),
              child: Text(
                'Verification Code',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins Bold',
                  color: themeColor,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 76),
              child: Text(
                'Sms verification code has been\n sent to:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins Regular',
                  color: blackColor,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: const Text(
                'RESEND',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 8,
                  fontFamily: 'Poppins Bold',
                  color: themeColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(
              height: 49,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 66),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PIN CODE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 8,
                      fontFamily: 'Poppins Bold',
                      color: blackColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 66),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: true,
                obscuringCharacter: '●',
                cursorColor: themeColor,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  borderWidth: 1.5,
                  fieldWidth: 46,
                  activeColor: themeColor,
                  disabledColor: themeColor,
                  inactiveColor: themeColor,
                  selectedColor: themeColor,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: MyButton(title: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}
