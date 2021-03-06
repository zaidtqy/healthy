import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healthy/pages/admin_home_page.dart';
import 'package:healthy/pages/form_activity_noon_page.dart';
import 'package:healthy/pages/form_activity_afternoon_page.dart';
import 'package:healthy/pages/form_activity_morning_page.dart';
import 'package:healthy/pages/form_activity_night_page.dart';
import 'package:healthy/pages/splash_page.dart';
import 'package:healthy/pages/sign_in_page.dart';
import 'package:healthy/pages/sign_up_page.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/pages/form_information_page.dart';
import 'package:healthy/pages/form_antrhopometri_page.dart';
import 'package:healthy/pages/form_hemoglobin_page.dart';
import 'package:healthy/pages/form_knowledge_page.dart';
import 'package:healthy/pages/menu_page.dart';
import 'package:healthy/pages/notif_reproduction_page.dart';
import 'package:healthy/pages/notif_food_page.dart';
import 'package:healthy/pages/notif_tablets_page.dart';
import 'package:healthy/pages/notif_activity_page.dart';
import 'package:healthy/pages/notif_prokes_page.dart';
import 'package:healthy/pages/history_form_intake_page.dart';
import 'package:healthy/theme.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  AwesomeNotifications().initialize(
    'resource://drawable/res_notification_app_icon',
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic Notifications',
        defaultColor: primaryColor,
        importance: NotificationImportance.High,
        channelShowBadge: true,
        channelDescription: '',
      ),
      NotificationChannel(
        channelKey: 'scheduled_channel',
        channelName: 'Scheduled Notifications',
        defaultColor: primaryColor,
        importance: NotificationImportance.High,
        channelShowBadge: true,
        channelDescription: '',
      ),
    ],
  );

  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null)
      .then((_) => runApp(const MyApp()));

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
        '/form-activity-morning': (context) => const FormActivityMorning(),
        '/form-activity-noon': (context) => const FormActivityNoon(),
        '/form-activity-afternoon': (context) => const FormActivityAfternoon(),
        '/form-activity-night': (context) => const FormActivityNight(),
        '/form-antrhopometri': (context) => const FormAntrhopometri(),
        '/form-hemoglobin': (context) => const FormHemoglobin(),
        '/form-knowledge': (context) => const FormKnowledge(),
        '/menu-page': (context) => const MenuPage(),
        '/notif-repro': (context) => const NotifReproduction(),
        '/notif-food': (context) => const NotifFood(),
        '/notif-tablets': (context) => const NotifTablets(),
        '/notif-activity': (context) => const NotifActivity(),
        '/notif-prokes': (context) => const NotifProkes(),
        '/history-intake': (context) => const HistoryFormIntake(),
        '/admin-homepage': (context) => const AdminHomePage(),
      },
    );
  }
}
