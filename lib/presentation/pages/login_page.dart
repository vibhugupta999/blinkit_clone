// ignore_for_file: type_literal_in_constant_pattern

import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/login%20bloc/login_page_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/blinkit_logo.dart';
import 'package:blinkit_clone/presentation/widgets/floating_skip_login.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_circularprogressindiactor.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginPageBloc, LoginPageState>(
      bloc: loginPageBloc,
      listener: (context, state) {
        if (state.runtimeType == LoginPageErrorState) {
          final tempstate = state as LoginPageErrorState;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(tempstate.errorMessage),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 10),

            ),
          );
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case LoginPageLoadingState:
            return Scaffold(
              backgroundColor: Colors.white,
              body: Center(child: GlobalCircularProgressIndicator()),
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

                            TextFormFieldWidget(formKey: formKey),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BlocBuilder<LoginPageBloc, LoginPageState>(
                                  bloc: continuecheckbloc,
                                  builder: (context, state) {
                                    return LoginPageButton(
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          loginPageBloc.add(
                                            GoogleSignInEvent(),
                                          );
                                        }
                                      },
                                      content: "Continue",
                                    );
                                  },
                                ),

                                LoginPageORTextWidget(),

                                LoginPageButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
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
