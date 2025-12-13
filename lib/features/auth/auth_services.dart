import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  AuthServices();

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static final GoogleSignIn googleSignIn = GoogleSignIn.instance;

  static final User? currentUser = _auth.currentUser;

  static final Stream<User?> userStream = _auth.authStateChanges();

  static bool get isEmailVerified => currentUser?.emailVerified ?? false;

  static bool _isInitialised = false;

  static bool get isInitialised => _isInitialised;

  static String get _serverClientId =>
      "457582385653-jnpjnvir5picvr7tu4nkvd5iv34dkl4s.apps.googleusercontent.com";

  static Future<void> initSignIn() async {
    if (!isInitialised) {
      await googleSignIn.initialize(serverClientId: _serverClientId);
      _isInitialised = true;
    }
  }

  static Future<UserCredential?> signInWithGoogle() async {
    try {
      initSignIn();
      final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

      final idToken = googleUser.authentication.idToken;

      final authorizationClient = googleUser.authorizationClient;
      GoogleSignInClientAuthorization? authorization = await authorizationClient
          .authorizationForScopes(['email', 'profile']);

      String? accessToken = authorization?.accessToken;

      if (accessToken == null) {
        final GoogleSignInClientAuthorization? authorization2 =
            await authorizationClient.authorizationForScopes([
              'email',
              'profile',
            ]);
        if (authorization2?.accessToken == null) {
          throw FirebaseAuthException(code: "error", message: "error");
        }
        authorization = authorization2;
      }
      accessToken = authorization?.accessToken;

      final credential = GoogleAuthProvider.credential(
        idToken: idToken,
        accessToken: accessToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> logout() async {
    await _auth.signOut();
    await googleSignIn.signOut();
  }
  // static Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   await googleSignIn.initialize(serverClientId: _serverClientId);

  //   final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

  //   final GoogleSignInAuthentication auth = googleUser.authentication;

  //   final credential = GoogleAuthProvider.credential(idToken: auth.idToken);

  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }
}
