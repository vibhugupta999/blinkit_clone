import 'dart:async';
import 'package:blinkit_clone/features/auth/auth_services.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
part 'login_page_event.dart';
part 'login_page_state.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  NetworkImage? _cachedImage;

  LoginPageBloc() : super(LoginPageInitial()) {
    on<LoginPageInitialEvent>(loginPageInitialEvent);
    on<GoogleSignInEvent>(googleSignInEvent);
    on<SkipLoginEvent>(skipLoginEvent);
    on<ContinueEnabledEvent>(continueEnabledEvent);
  }

  FutureOr<void> loginPageInitialEvent(
    LoginPageInitialEvent event,
    Emitter<LoginPageState> emit,
  ) async {
    emit(LoginPageLoadingState());
    _cachedImage = NetworkImage(
      "https://res.cloudinary.com/de8jblslu/image/upload/v1754561784/pamperItem_aiq4r0.png",
    );
    emit(LoginPageLoadedState(image: _cachedImage!));
  }

  FutureOr<void> googleSignInEvent(
    GoogleSignInEvent event,
    Emitter<LoginPageState> emit,
  ) async {
    try {
      await AuthServices.signInWithGoogle();
      // If sign-in succeeds, the StreamBuilder in main.dart will handle navigation
    } catch (e) {
      // Show error state
      emit(
        LoginPageErrorState(
          errorMessage: e.toString().replaceFirst('Exception: ', ''),
        ),
      );
      // Re-emit loaded state after a delay to show error and return to normal UI
      await Future.delayed(Duration(seconds: 3));
      // Return to loaded state with cached image
      if (_cachedImage != null) {
        emit(LoginPageLoadedState(image: _cachedImage!));
      } else {
        // Fallback: re-initialize
        await loginPageInitialEvent(LoginPageInitialEvent(), emit);
      }
    }
  }

  FutureOr<void> skipLoginEvent(
    SkipLoginEvent event,
    Emitter<LoginPageState> emit,
  ) {
    emit(SkipLoginState(isLoginSkipped: true));
  }

  FutureOr<void> continueEnabledEvent(
    ContinueEnabledEvent event,
    Emitter<LoginPageState> emit,
  ) {
    emit(ContinueEnabledState());
  }
}
