import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class FloatingSkipLoginWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const FloatingSkipLoginWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 32,
      margin: EdgeInsets.symmetric(vertical: 0),
      padding: EdgeInsets.symmetric(vertical: 0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: TextButton(
        style: ButtonStyle(splashFactory: NoSplash.splashFactory),
        onPressed: onPressed,
        child: Text(
          "Skip login",
          style: TextStyle(
            fontFamily: font,
            letterSpacing: 0,
            fontSize: 12,
            color: darkblack,
          ),
        ),
      ),
    );
  }
}
