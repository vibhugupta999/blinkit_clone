import 'dart:async';

import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Users extends ChangeNotifier {
  static StreamSubscription<User?>? _authStateSubscription;

  static void listenToAuthStateChanges() {
    _authStateSubscription = FirebaseAuth.instance.authStateChanges().listen((
      User? currentuser,
    ) {
      user = currentuser;
    });
  }

  @override
  void dispose() {
    _authStateSubscription?.cancel();
    super.dispose();
  }
}
