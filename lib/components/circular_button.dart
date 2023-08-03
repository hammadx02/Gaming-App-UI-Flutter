import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;

  const CircularButton(
      {super.key, required this.buttonText, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
            fontFamily: 'Poppins Bold',
            fontSize: 14,
            color: Colors.white,
          ),
        ),
    ),);
  }
}
