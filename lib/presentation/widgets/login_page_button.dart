import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/login%20bloc/login_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child: BlocBuilder<LoginPageBloc, LoginPageState>(
        bloc: continuecheckbloc,
        builder: (context, state) {
          return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              backgroundColor: content == "Continue"
                  ? continueButtonEnabled
                        ? logincontinueenabled
                        : logincontinuedisabled
                  : loginwithzomato,
              foregroundColor: Colors.white,
            ),
            child: content == "Continue"
                ? Text(
                    content,
                    style: TextStyle(fontFamily: font, fontSize: 16),
                  )
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
          );
        },
      ),
    );
  }
}
