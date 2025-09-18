import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

class SettingsPageInitialRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const SettingsPageInitialRowWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.3,
      height: screenHeight / 10,
      decoration: BoxDecoration(
        border: Border.all(color: profilepagearrow),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedIcon(
            icon: Icon(icon, color: Colors.white, size: 18),

            decoration: IconDecoration(
              border: IconBorder(color: darkblack, width: 4),
            ),
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 12,
              fontFamily: font,
              color: darkblack,
            ),
          ),
        ],
      ),
    );
  }
}
