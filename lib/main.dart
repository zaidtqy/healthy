import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healthy/pages/splash_page.dart';
import 'package:healthy/pages/sign_in_page.dart';
import 'package:healthy/pages/sign_up_page.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/pages/form_information_page.dart';
import 'package:healthy/pages/form_activity_page.dart';
import 'package:healthy/pages/form_antrhopometri_page.dart';
import 'package:healthy/pages/form_hemoglobin_page.dart';
import 'package:healthy/pages/form_knowledge_page.dart';
import 'package:healthy/pages/menu_page.dart';
import 'package:healthy/pages/notifications_page.dart';
import 'package:healthy/pages/notif_reproduction_page.dart';
import 'package:healthy/pages/notif_food_page.dart';
import 'package:healthy/pages/notif_tablets_page.dart';
import 'package:healthy/pages/notif_activity_page.dart';
import 'package:healthy/pages/notif_prokes_page.dart';
// import 'package:healthy/pages/history_form_activity_page.dart';
import 'package:healthy/pages/history_form_intake_page.dart';
// import 'package:healthy/pages/history_form_antrhopometri_page.dart';
// import 'package:healthy/pages/history_form_hemoglobin_page.dart';
import 'package:healthy/pages/history_form_knowledge_page.dart';
// import 'package:healthy/pages/result_information_page.dart';
// import 'package:healthy/pages/result_antrhopometri_page.dart';
// import 'package:healthy/pages/result_hemoglobin_page.dart';
// import 'package:healthy/pages/result_knowledge_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

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
        '/form-knowledge': (context) => const FormKnowledge(),
        '/menu-page': (context) => const MenuPage(),
        '/notifications-page': (context) => const NotificationsPage(),
        '/notif-repro': (context) => const NotifReproduction(),
        '/notif-food': (context) => const NotifFood(),
        '/notif-tablets': (context) => const NotifTablets(),
        '/notif-activity': (context) => const NotifActivity(),
        '/notif-prokes': (context) => const NotifProkes(),
        // '/history-activity': (context) => const HistoryFormActivity(),
        '/history-intake': (context) => const HistoryFormIntake(),
        // '/history-antrhopometri': (context) => const HistoryFormAntrhopometri(),
        // '/history-hemoglobin': (context) => const HistoryFormHemoglobin(),
        // '/history-knowledge': (context) => const HistoryFormKnowledge(),
        // '/result-activity': (context) => const ResultActivity(),
        // '/result-information': (context) => const ResultInformation(),
        // '/result-antrhopometri': (context) => const ResultAntrhopometri(),
        // '/result-hemoglobin': (context) => const ResultHemoglobin(),
        // '/result-knowledge': (context) => const ResultKnowledge(),
      },
    );
  }
}
