import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthy/pages/sign_in_page.dart';
import 'package:healthy/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget info() {
      return Container(
        height: 97,
        width: double.infinity,
        padding: EdgeInsets.all(defaultMargin),
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: fourthColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1.0,
            color: primaryColor,
          ),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/announcement.png',
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FadeAnimatedText(
                        'AKSES ADMIN',
                        textStyle: primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: bold,
                        ),
                        fadeInEnd: 0.1,
                        fadeOutBegin: 0.2,
                        duration: const Duration(milliseconds: 15000),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FadeAnimatedText(
                        'Akun admin digunakan oleh orang yang terpilih. Akun akan digunakan untuk keperluan melihat data-data subyek dan mengunduh data-data tersebut menjadi Excel.',
                        textStyle: primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                        fadeInEnd: 0.1,
                        fadeOutBegin: 0.2,
                        duration: const Duration(milliseconds: 15000),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget menuInformation() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-information');
              },
              child: Image.asset(
                'assets/user.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Lihat Data Informasi',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget menuActivity() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-activity');
              },
              child: Image.asset(
                'assets/run.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Lihat Data Aktifitas Fisik',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget menuIntake() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 20)),
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/admin-homepage');
              },
              child: Image.asset(
                'assets/cutlery.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Lihat Data Asupan',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget menuAntrhopometri() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-antrhopometri');
              },
              child: Image.asset(
                'assets/weight.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Lihat Data Antrhopometri',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget menuHb() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-hemoglobin');
              },
              child: Image.asset(
                'assets/blood.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Lihat Data Hemoglobin',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget menuKnowledge() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-knowledge');
              },
              child: Image.asset(
                'assets/books.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Lihat Kesehatan Reproduksi dan Pola Makan',
              style: primaryTextStyle.copyWith(
                fontSize: 8,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget downloadInformation() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-information');
              },
              child: Image.asset(
                'assets/xls.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Unduh Data Informasi',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget downloadActivity() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-activity');
              },
              child: Image.asset(
                'assets/xls.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Unduh Data Aktifitas Fisik',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget downloadIntake() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 20)),
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/admin-homepage');
              },
              child: Image.asset(
                'assets/xls.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Unduh Data Asupan',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget downloadAntrhopometri() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-antrhopometri');
              },
              child: Image.asset(
                'assets/xls.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Unduh Data Antrhopometri',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget downloadHb() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-hemoglobin');
              },
              child: Image.asset(
                'assets/xls.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Unduh Data Hemoglobin',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget downloadKnowledge() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  fourthColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/form-knowledge');
              },
              child: Image.asset(
                'assets/xls.png',
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 75,
            child: Text(
              'Unduh Kesehatan Reproduksi dan Pola Makan',
              style: primaryTextStyle.copyWith(
                fontSize: 8,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }

    Widget logoutButton() {
      return SizedBox(
        height: 45,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            CoolAlert.show(
              context: context,
              type: CoolAlertType.confirm,
              title: " ",
              widget: Column(
                children: [
                  Text(
                    'Anda yakin ingin keluar dari aplikasi?',
                    style: primaryTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              confirmBtnText: 'Ya',
              cancelBtnText: 'Tidak',
              confirmBtnColor: const Color(0xff2F5D62),
              onConfirmBtnTap: () async {
                final SharedPreferences pref =
                    await SharedPreferences.getInstance();
                pref.clear();
                logout(context);
              },
              confirmBtnTextStyle:
                  TextStyle(color: backgroundColor, fontSize: 18),
            );
          },
          style: TextButton.styleFrom(
              backgroundColor: fourthColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logout.png',
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Keluar',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: fourthColor,
          automaticallyImplyLeading: false,
          elevation: 5,
          title: Text(
            'Selamat Datang, Admin!',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: ListView(
            children: [
              info(),
              Row(
                children: [
                  menuInformation(),
                  const Spacer(),
                  menuActivity(),
                  const Spacer(),
                  menuIntake(),
                ],
              ),
              Row(
                children: [
                  menuAntrhopometri(),
                  const Spacer(),
                  menuHb(),
                  const Spacer(),
                  menuKnowledge(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Unduh Data',
                style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  downloadInformation(),
                  const Spacer(),
                  downloadActivity(),
                  const Spacer(),
                  downloadIntake(),
                ],
              ),
              Row(
                children: [
                  downloadAntrhopometri(),
                  const Spacer(),
                  downloadHb(),
                  const Spacer(),
                  downloadKnowledge(),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              logoutButton(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => const SignInPage()),
    ModalRoute.withName('/'),
  );
}
