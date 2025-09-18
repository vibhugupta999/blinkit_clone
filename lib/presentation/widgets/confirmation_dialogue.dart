import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:flutter/material.dart';

class ConfirmationDialogue extends StatelessWidget {
  const ConfirmationDialogue({
    super.key,
    required this.userAddress,
    required this.text,
    required this.onTapNO,
    required this.onTapYES,
  });
  final String text;
  final UserAddress? userAddress;
  final VoidCallback onTapNO;
  final VoidCallback onTapYES;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(),
      titlePadding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      insetPadding: EdgeInsets.symmetric(),
      titleTextStyle: TextStyle(
        fontFamily: font,
        color: lightblack,
        fontSize: 14,
        letterSpacing: -0.5,
      ),
      title: Text(text),
      actions: [
        TextButton(
          onPressed: onTapNO,
          style: TextButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            foregroundColor: profilegreen,
            textStyle: TextStyle(fontFamily: font, fontSize: 16),
          ),
          child: Text("NO"),
        ),
        TextButton(
          onPressed: onTapYES,
          style: TextButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            foregroundColor: profilegreen,
            textStyle: TextStyle(fontFamily: font, fontSize: 16),
          ),
          child: Text("YES"),
        ),
      ],
      actionsPadding: EdgeInsets.symmetric(),
    );
  }
}
