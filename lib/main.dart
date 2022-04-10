import 'package:flutter/material.dart';
import 'package:healthy/pages/splash_page.dart';
import 'package:healthy/pages/sign_in_page.dart';
import 'package:healthy/pages/sign_up_page.dart';
import 'package:healthy/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home-page': (context) => HomePage(),
      },
    );
  }
}
