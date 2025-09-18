import 'dart:async';
import 'package:blinkit_clone/features/auth/auth_services.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
part 'login_page_event.dart';
part 'login_page_state.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  LoginPageBloc() : super(LoginPageInitial()) {
    on<LoginPageInitialEvent>(loginPageInitialEvent);
    on<GoogleSignInEvent>(googleSignInEvent);
    on<SkipLoginEvent>(skipLoginEvent);
  }

  FutureOr<void> loginPageInitialEvent(
    LoginPageInitialEvent event,
    Emitter<LoginPageState> emit,
  ) async {
    emit(LoginPageLoadingState());
    final NetworkImage image = NetworkImage(
      "https://res.cloudinary.com/de8jblslu/image/upload/v1754561784/pamperItem_aiq4r0.png",
    );
    await Future.delayed(Duration(milliseconds: 500));
    emit(LoginPageLoadedState(image: image));
  }

  FutureOr<void> googleSignInEvent(
    GoogleSignInEvent event,
    Emitter<LoginPageState> emit,
  ) async {
    await AuthServices.signInWithGoogle();
    
  }

  FutureOr<void> skipLoginEvent(
    SkipLoginEvent event,
    Emitter<LoginPageState> emit,
  ) {
    emit(SkipLoginState(isLoginSkipped: true));
  }
}
