import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String role = 'user';

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3), () async {
        final SharedPreferences pref = await SharedPreferences.getInstance();
        final getEmail = pref.getString('email_key');
        final getPassword = pref.getString('password_key');
        if (getEmail == null || getPassword == null) {
          Navigator.of(context).pushNamedAndRemoveUntil(
              '/sign-in', (Route<dynamic> route) => false);
        } else {
          checkRole();
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

  void checkRole() async {
    User? user = FirebaseAuth.instance.currentUser;
    final DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get();

    setState(() {
      role = snap['role'];
    });

    if (role == 'user') {
      Navigator.of(context).pushNamedAndRemoveUntil(
          '/home-page', (Route<dynamic> route) => false);
    } else if (role == 'admin') {
      Navigator.of(context).pushNamedAndRemoveUntil(
          '/admin-homepage', (Route<dynamic> route) => false);
    }
  }
}
