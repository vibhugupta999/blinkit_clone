import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/features/auth/auth_services.dart';
import 'package:blinkit_clone/presentation/pages/login_page.dart';
import 'package:blinkit_clone/presentation/pages/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffffffff),
        fontFamily: font,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: primaryMaterialColor,
        ),
      ),
      home: StreamBuilder<User?>(
        stream: AuthServices.userstream,
        builder: (context, snapshot) {
          return snapshot.hasData && AuthServices.isEmailVerified
              ? const NavigationPage()
              : const LoginPage();
        },
      ),
    );
  }
}