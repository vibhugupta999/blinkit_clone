// ignore_for_file: type_literal_in_constant_pattern

import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/login%20bloc/login_page_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/blinkit_logo.dart';
import 'package:blinkit_clone/presentation/widgets/floating_skip_login.dart';
import 'package:blinkit_clone/presentation/widgets/login_page_button.dart';
import 'package:blinkit_clone/presentation/widgets/login_page_item_row_widget.dart';
import 'package:blinkit_clone/presentation/widgets/text_form_field.dart';
import 'package:blinkit_clone/presentation/widgets/text_widgts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    loginPageBloc.add(LoginPageInitialEvent());
  }

  final LoginPageBloc loginPageBloc = LoginPageBloc();
  final formKey = GlobalKey<FormState>();
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginPageBloc, LoginPageState>(
      bloc: loginPageBloc,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {
          case LoginPageLoadingState:
            return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: CircularProgressIndicator(
                  color: loginblinkitlogobackground,
                  strokeWidth: 5,
                  backgroundColor: darkblack,
                  padding: const EdgeInsets.all(20),
                ),
              ),
            );
          case LoginPageLoadedState:
            final loadedstate = state as LoginPageLoadedState;
            return Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 8),
                        child: LoginPageItemRowWidget(
                          count: 1,
                          networkImage: loadedstate.image,
                        ),
                      ),
                      LoginPageItemRowWidget(
                        count: 2,
                        networkImage: loadedstate.image,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: LoginPageItemRowWidget(
                          count: 1,
                          networkImage: loadedstate.image,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(child: SizedBox()),
                      Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 20,
                              spreadRadius: 40,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            BlinkitLogo(),

                            SizedBox(height: 20),

                            LoginPageIndiasLatMinuteAppTextWidget(),

                            SizedBox(height: 10),

                            LoginPageLoginSignUpTextWidget(),

                            SizedBox(height: 10),

                            TextFormFieldWidget(
                              formKey: formKey,
                              textEditingController: textEditingController,
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LoginPageButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      phone = textEditingController.text
                                          .toString();
                                      loginPageBloc.add(GoogleSignInEvent());
                                    }
                                  },
                                  content: "Continue",
                                ),

                                LoginPageORTextWidget(),

                                LoginPageButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      phone = textEditingController.text
                                          .toString();
                                      loginPageBloc.add(GoogleSignInEvent());
                                    }
                                  },
                                  content: "",
                                ),
                              ],
                            ),
                            SizedBox(height: 10),

                            LoginPageAccessYourSavedAddressesTextWidget(),

                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              floatingActionButton: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: FloatingSkipLoginWidget(
                  onPressed: () {
                    // loginPageBloc.add(SkipLoginEvent());
                  },
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
            );

          default:
            return SizedBox();
        }
      },
    );
  }
}
