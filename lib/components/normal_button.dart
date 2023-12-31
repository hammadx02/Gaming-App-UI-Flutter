import 'package:flutter/material.dart';
import 'package:gaming_app_ui/constants/colors.dart';

class NormalButton extends StatelessWidget {
  final String title;
  const NormalButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: themeColor,
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Poppins Bold',
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
