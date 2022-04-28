import 'dart:async';

import 'package:flutter/material.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/pages/sign_in_page.dart';
import 'package:healthy/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3), () async {
        final SharedPreferences pref = await SharedPreferences.getInstance();
        final getEmail = pref.getString('email_key');
        final getPassword = pref.getString('password_key');
        if (getEmail == null || getPassword == null) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const SignInPage(),
            ),
          );
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/logo-app.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
