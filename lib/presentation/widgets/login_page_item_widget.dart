import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class LoginPageItemWidget extends StatelessWidget {
  final NetworkImage networkImage;
  const LoginPageItemWidget({super.key, required this.networkImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth / 4,
      height: screenWidth / 4,
      decoration: BoxDecoration(
        color: itemwidgetbackground,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: SizedBox(
          width: screenWidth / 7,
          height: screenWidth / 3.5,
          child: Image(image: networkImage, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
