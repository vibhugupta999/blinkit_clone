import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class BlinkitLogo extends StatelessWidget {
  const BlinkitLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.18,
      height: screenWidth * 0.18,
      decoration: BoxDecoration(
        color: loginblinkitlogobackground,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: "blink",
            style: TextStyle(
              fontFamily: fontbold,
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 16,
              letterSpacing: -1,
            ),
            children: [
              TextSpan(
                text: "it",
                style: TextStyle(
                  color: loginblinkitlogogreen,
                  fontFamily: fontbold,
                  fontWeight: FontWeight.w900,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
