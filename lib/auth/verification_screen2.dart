import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaming_app_ui/auth/verification_screen3.dart';
import 'package:gaming_app_ui/components/normal_button.dart';
import 'package:gaming_app_ui/constants/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerficationScreen2 extends StatefulWidget {
  const VerficationScreen2({super.key});

  @override
  State<VerficationScreen2> createState() => _VerficationScreen2State();
}

class _VerficationScreen2State extends State<VerficationScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: InkWell(
                onTap: () {
                  showCupertinoDialog(
                    context: context,
                    builder: AlertDialogGame,
                  );
                },
                child: NormalButton(title: 'Next'),
              ),
            ),
          ],
        ),
     
    );
  }
}

Widget AlertDialogGame(BuildContext context) {
  return CupertinoAlertDialog(
    title: const Text(
      'Phone number confirmation',
      style: TextStyle(
        fontSize: 18,
        fontFamily: 'Poppins Medium',
        color: blackColor,
      ),
    ),
    content: const Text(
      'We\'ll send a verification code to the following number:',
      style: TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins Regular',
        color: blackColor,
      ),
    ),
    actions: <CupertinoDialogAction>[
      CupertinoDialogAction(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          'Cancel',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins Regular',
            color: themeColor,
          ),
        ),
      ),
      CupertinoDialogAction(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VerficationScreen3(),
            ),
          );
        },
        child: const Text(
          'OK',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins Regular',
            color: themeColor,
          ),
        ),
      ),
    ],
  );
}
