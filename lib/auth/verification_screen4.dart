import 'package:flutter/material.dart';
import 'package:gaming_app_ui/components/buttons.dart';
import 'package:gaming_app_ui/constants/colors.dart';

class VerficationScreen4 extends StatefulWidget {
  const VerficationScreen4({super.key});

  @override
  State<VerficationScreen4> createState() => _VerficationScreen4State();
}

class _VerficationScreen4State extends State<VerficationScreen4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 143,
            ),
            Center(
              child: Image(
                image: AssetImage(
                  'images/success.png',
                ),
                width: 144,
                height: 144.89,
              ),
            ),
            const SizedBox(
              height: 31.11,
            ),
            Center(
              child: Text(
                'Verification\n Successful',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins Bold',
                  color: themeColor,
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Center(
              child: Text(
                'You now have full access to\n our system',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins Regular',
                  color: blackColor,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: MyButton(title: 'Let’s Combat!'),
            ),
          ],
        ),
      ),
    );
  }
}
