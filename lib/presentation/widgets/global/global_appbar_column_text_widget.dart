import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class AppBarColumnTextWidget extends StatelessWidget {
  final String topText;
  const AppBarColumnTextWidget({super.key, required this.topText});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            topText,
            style: TextStyle(
              fontFamily: fontbold,
              color: homepagetitlecolor,
              fontWeight: FontWeight.w900,
              fontSize: 13,
            ),
          ),
          Text(
            "13 minutes",
            style: TextStyle(
              fontFamily: fontbold,
              fontWeight: FontWeight.w900,
              color: homepagetitlecolor,
              fontSize: 28,
            ),
          ),
        ],
      ),
    );
  }
}
