// ignore_for_file: avoid_print

import 'dart:core';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  AuthServices();

  static final _auth = FirebaseAuth.instance;

  static final GoogleSignIn googleSignIn = GoogleSignIn.instance;

  static User? get user => _auth.currentUser;

  static Stream<User?> get userstream => _auth.userChanges();

  static bool get isEmailVerified => user?.emailVerified ?? false;

  static Future<void> logout() async {
    await _auth.signOut();
    await googleSignIn.signOut();
  }

  static Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    await googleSignIn.initialize(
      serverClientId:
          "457582385653-jnpjnvir5picvr7tu4nkvd5iv34dkl4s.apps.googleusercontent.com",
    );

    final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

    final GoogleSignInAuthentication auth = googleUser.authentication;

    final credential = GoogleAuthProvider.credential(idToken: auth.idToken);

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
