import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class LoginPageIndiasLatMinuteAppTextWidget extends StatelessWidget {
  const LoginPageIndiasLatMinuteAppTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "India's last minute app",
      style: TextStyle(
        color: darkblack,
        fontFamily: fontbold,
        fontSize: 21,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}


class LoginPageLoginSignUpTextWidget extends StatelessWidget {
  const LoginPageLoginSignUpTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Login or Sign Up",
      style: TextStyle(
        fontFamily: font,
        fontSize: 15,
        color: lightblack,
      ),
    );
  }
}

class LoginPageORTextWidget extends StatelessWidget {
  const LoginPageORTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        "OR",
        style: TextStyle(
          color: Colors.grey.shade600,
          fontFamily: font,
          fontWeight: FontWeight.w100,
          fontSize: 12,
        ),
      ),
    );
  }
}

class LoginPageAccessYourSavedAddressesTextWidget extends StatelessWidget {
  const LoginPageAccessYourSavedAddressesTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Access your saved addresses from Zomato automatically!",
      style: TextStyle(
        fontFamily: font,
        color: logincontinuedisabled,
        fontSize: 11,
        letterSpacing: -0.5,
      ),
    );
  }
}

