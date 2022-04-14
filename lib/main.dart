import 'package:flutter/material.dart';
import 'package:healthy/pages/history_form_intake_page.dart';
import 'package:healthy/pages/splash_page.dart';
import 'package:healthy/pages/sign_in_page.dart';
import 'package:healthy/pages/sign_up_page.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/pages/form_information_page.dart';
import 'package:healthy/pages/form_activity_page.dart';
import 'package:healthy/pages/form_antrhopometri_page.dart';
import 'package:healthy/pages/form_hemoglobin_page.dart';
import 'package:healthy/pages/menu_page.dart';
import 'package:healthy/pages/history_form_activity_page.dart';
import 'package:healthy/pages/history_form_antrhopometri_page.dart';
import 'package:healthy/pages/history_form_hemoglobin_page.dart';
import 'package:healthy/pages/history_form_knowledge_page.dart';
import 'package:healthy/pages/result_activity_page.dart';
import 'package:healthy/pages/result_information_page.dart';
import 'package:healthy/pages/result_antrhopometri_page.dart';
import 'package:healthy/pages/result_hemoglobin_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home-page': (context) => const HomePage(),
        '/form-information': (context) => const FormInformation(),
        '/form-activity': (context) => const FormActivity(),
        '/form-antrhopometri': (context) => const FormAntrhopometri(),
        '/form-hemoglobin': (context) => const FormHemoglobin(),
        '/menu-page': (context) => const MenuPage(),
        '/history-activity': (context) => const HistoryFormActivity(),
        '/history-intake': (context) => const HistoryFormIntake(),
        '/history-antrhopometri': (context) => const HistoryFormAntrhopometri(),
        '/history-hemoglobin': (context) => const HistoryFormHemoglobin(),
        '/history-knowledge': (context) => const HistoryFormKnowledge(),
        '/result-activity': (context) => const ResultActivity(),
        '/result-information': (context) => const ResultInformation(),
        '/result-antrhopometri': (context) => const ResultAntrhopometri(),
        '/result-hemoglobin': (context) => const ResultHemoglobin(),
      },
    );
  }
}
