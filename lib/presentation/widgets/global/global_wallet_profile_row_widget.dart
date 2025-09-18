import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/presentation/pages/settings.dart';
import 'package:flutter/material.dart';

class GlobalWalletProfileRowWidget extends StatelessWidget {
  const GlobalWalletProfileRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentGeometry.directional(0, 1),
          children: [
            Container(
              width: screenWidth * 0.095,
              height: screenWidth * 0.095,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.wallet_rounded,
                size: 30,
                color: Colors.lime.shade900,
              ),
            ),
            Container(
              width: screenWidth * 0.095,
              height: screenWidth * 0.03,
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    String.fromCharCode(Icons.currency_rupee.codePoint),
                    style: TextStyle(
                      fontFamily: Icons.currency_rupee.fontFamily,
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "0",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: screenWidth * 0.035),
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()),
          ),
          child: Container(
            width: screenWidth * 0.095,
            height: screenWidth * 0.095,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.person_rounded, size: 30),
          ),
        ),
      ],
    );
  }
}
