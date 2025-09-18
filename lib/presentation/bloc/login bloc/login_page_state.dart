part of 'login_page_bloc.dart';

@immutable
abstract class LoginPageState {}

final class LoginPageInitial extends LoginPageState {}

class LoginPageLoadingState extends LoginPageState {}

class LoginPageLoadedState extends LoginPageState {
  final NetworkImage image;

  LoginPageLoadedState({required this.image});
}

class SkipLoginState extends LoginPageState {
  final bool isLoginSkipped;

  SkipLoginState({required this.isLoginSkipped});
}