import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class LoginPageButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  const LoginPageButton({
    super.key,
    required this.onPressed,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          backgroundColor: content == "Continue"
              ? logincontinuedisabled
              : loginwithzomato,
          foregroundColor: Colors.white,
        ),
        child: content == "Continue"
            ? Text(content, style: TextStyle(fontFamily: font, fontSize: 16))
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: RichText(
                  text: TextSpan(
                    text: "Login with ",
                    style: TextStyle(fontFamily: font, fontSize: 18),
                    children: [
                      TextSpan(
                        text: "zomato",
                        style: TextStyle(
                          fontFamily: font,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
