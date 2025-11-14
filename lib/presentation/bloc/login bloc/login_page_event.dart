part of 'login_page_bloc.dart';

@immutable
abstract class LoginPageEvent {}

class LoginPageInitialEvent extends LoginPageEvent{}

class SkipLoginEvent extends LoginPageEvent{}

class GoogleSignInEvent extends LoginPageEvent {}

class ContinueEnabledEvent extends LoginPageEvent{}