import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthy/models/activity_model.dart';
import 'package:healthy/models/antrhopometri_model.dart';
import 'package:healthy/models/information_model.dart';
import 'package:healthy/models/notification_model.dart';
import 'package:healthy/models/user_model.dart';
import 'package:healthy/pages/form_activity_page.dart';
import 'package:healthy/pages/form_antrhopometri_page.dart';
import 'package:healthy/pages/form_information_page.dart';
import 'package:healthy/pages/history_form_activity_page.dart';
import 'package:healthy/pages/history_form_antrhopometri_page.dart';
import 'package:healthy/pages/result_information_page.dart';
import 'package:healthy/services/activity_service.dart';
import 'package:healthy/services/antrhopometri_service.dart';
import 'package:healthy/services/information_service.dart';
import 'package:healthy/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel(uid: '1234');

  @override
  void initState() {
    // ignore: todo
    // TODO: Implement initState
    super.initState();

    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) async {
      loggedInUser = UserModel.fromMap(value.data());

      setState(() {});
    });
  }

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
                        'LENGKAPI DATA ANDA',
                        textStyle: primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: bold,
                        ),
                        duration: const Duration(milliseconds: 10000),
                        textAlign: TextAlign.start,
                      ),
                      FadeAnimatedText(
                        'TETAP JAGA PROTOKOL KESEHATAN',
                        textStyle: primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: bold,
                        ),
                        duration: const Duration(milliseconds: 10000),
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
                        'Isi dan lengkapi data informasi anda pada menu \'Data Informasi Subyek\' dan pastikan data informasi tersebut sesuai dengan kondisi anda.',
                        textStyle: primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                        duration: const Duration(milliseconds: 10000),
                        textAlign: TextAlign.justify,
                      ),
                      FadeAnimatedText(
                        'Dimana pun kamu berada, tetap jaga protokol kesehatan ya. Gunakan masker dengan benar, Mencuci tangan, Menjaga Jarak, dan Hindari kerumunan.',
                        textStyle: primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                        duration: const Duration(milliseconds: 10000),
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
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form-information');
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
              'Data Informasi Subyek',
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
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form-activity');
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
              'Data Aktifitas Fisik Subyek',
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
            child: TextButton(
              onPressed: () {},
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
              'Data Asupan Subyek',
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
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form-antrhopometri');
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
              'Data Antrhopometri',
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
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form-hemoglobin');
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
              'Data Hemoglobin',
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
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form-knowledge');
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
              'Kesehatan Reproduksi dan Pola Makan',
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

    Widget informationSubject({required String uid}) {
      return FutureBuilder<HistoryInformModel?>(
        future: InformationService().fetchInformation(uid: uid),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Data Informasi Subyek',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            snapshot.data!.date,
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/user.png',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            snapshot.data!.name,
                            style: primaryTextStyle.copyWith(
                                fontSize: 20, fontWeight: bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/placeholder.png',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 300,
                            child: Text(
                              snapshot.data!.address,
                              style: primaryTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: medium,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () async {
                            final result = await InformationService()
                                .fetchInformation(uid: loggedInUser.uid);

                            if (result != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ResultInformation(informModel: result),
                                ),
                              );
                            } else {
                              // null
                            }
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                          child: Text(
                            'Lihat Data',
                            style: backgroundTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }
          }
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Data Informasi Subyek',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '--/--/----',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/user.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/placeholder.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
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
                              'Data anda masih kosong, apakah anda ingin mengisinya sekarang?',
                              style: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: semibold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        confirmBtnText: 'Isi',
                        cancelBtnText: 'Nanti',
                        confirmBtnColor: const Color(0xff2F5D62),
                        onConfirmBtnTap: () async {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const FormInformation(),
                            ),
                          );
                        },
                        confirmBtnTextStyle:
                            TextStyle(color: backgroundColor, fontSize: 18),
                      );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: Text(
                      'Lihat Data',
                      style: backgroundTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget activitySubject({required String uid}) {
      return FutureBuilder<List<HistoryActivityModel>?>(
        future: ActivityService().fetchActivity(uid: uid),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data != null && snapshot.data!.isNotEmpty) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Data Aktivitas Fisik Subyek',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            snapshot.data!.last.date,
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/clock.png',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '${snapshot.data!.last.activityModel.last.activityTime} Menit',
                            style: primaryTextStyle.copyWith(
                                fontSize: 20, fontWeight: bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/date.png',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            snapshot.data!.last.activityModel.last
                                .descriptionActivity,
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Image.asset(
                            'assets/run.png',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Aktivitas : ',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            snapshot.data!.last.activityModel.last.activityName,
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HistoryFormActivity(
                                  listActivityModel: snapshot.data!,
                                ),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                          child: Text(
                            'Lihat Riwayat',
                            style: backgroundTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }
          }
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Data Aktivitas Fisik Subyek',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '--/--/----',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/clock.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/date.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Image.asset(
                      'assets/run.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Aktivitas : ',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      '-',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 40,
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
                              'Data aktifitas anda masih kosong, apakah anda ingin mengisinya sekarang?',
                              style: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: semibold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        confirmBtnText: 'Isi',
                        cancelBtnText: 'Nanti',
                        confirmBtnColor: const Color(0xff2F5D62),
                        onConfirmBtnTap: () async {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const FormActivity(),
                            ),
                          );
                        },
                        confirmBtnTextStyle:
                            TextStyle(color: backgroundColor, fontSize: 18),
                      );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: Text(
                      'Lihat Riwayat',
                      style: backgroundTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget intakeSubject() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Data Asupan Subyek',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/cutlery.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Data Harian Makan',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/file.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Makan Siang - Sore ...',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/history-intake');
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Text(
                  'Lihat Riwayat',
                  style: backgroundTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget antrhopometriSubject({required String uid}) {
      return FutureBuilder<List<HistoryAntrhopoModel>?>(
        future: AntrhopoService().fetchAntrhopo(uid: uid),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data != null && snapshot.data!.isNotEmpty) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Data Antrhopometri',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            snapshot.data!.last.date,
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/height.png',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '${snapshot.data!.last.antrhopoModel.last.antrhopoHeight} CM',
                            style: primaryTextStyle.copyWith(
                                fontSize: 20, fontWeight: bold),
                          ),
                          const SizedBox(
                            width: 68,
                          ),
                          Image.asset(
                            'assets/weight.png',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '${snapshot.data!.last.antrhopoModel.last.antrhopoWeight} Kg',
                            style: primaryTextStyle.copyWith(
                                fontSize: 20, fontWeight: bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/file.png',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Indeks Massa Tubuh : ',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            'Kelebihan Berat Badan (Grade 1)',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HistoryFormAntrhopometri(
                                  listAntrhopoModel: snapshot.data!,
                                ),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                          child: Text(
                            'Lihat Riwayat',
                            style: backgroundTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }
          }
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Data Antrhopometri',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '--/--/----',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/height.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                    const SizedBox(
                      width: 68,
                    ),
                    Image.asset(
                      'assets/weight.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '-',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/file.png',
                      width: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Indeks Massa Tubuh : ',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      '-',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
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
                              'Data antrhopometri anda masih kosong, apakah anda ingin mengisinya sekarang?',
                              style: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: semibold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        confirmBtnText: 'Isi',
                        cancelBtnText: 'Nanti',
                        confirmBtnColor: const Color(0xff2F5D62),
                        onConfirmBtnTap: () async {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const FormAntrhopometri(),
                            ),
                          );
                        },
                        confirmBtnTextStyle:
                            TextStyle(color: backgroundColor, fontSize: 18),
                      );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: Text(
                      'Lihat Riwayat',
                      style: backgroundTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget hemoglobinSubject() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Data Hemoglobin',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/blood.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '13 Hb',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
                const SizedBox(
                  width: 68,
                ),
                Image.asset(
                  'assets/report.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Tidak Anemia',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/file.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Anemia jika nilai Hb <12 g/Dl dan Tidak Anemia jika Hb >12 g/Dl',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/history-hemoglobin');
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Text(
                  'Lihat Riwayat',
                  style: backgroundTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget knowledgeSubject() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Kesehatan Reproduksi dan Pola Makan',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/books.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Pengetahuan Reproduksi dan Gizi',
                  style:
                      primaryTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/file.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Pertanyaan seputar kesehatan reproduksi dan pola makan subyek ',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/history-knowledge');
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Text(
                  'Lihat Riwayat',
                  style: backgroundTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget article1() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/notif-repro');
        },
        child: Container(
          height: 115,
          width: double.infinity,
          padding: EdgeInsets.all(defaultMargin),
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: fourthColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/letter.png',
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
                  children: [
                    Text(
                      'KESEHATAN REPRODUKSI',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Tersedia beberapa artikel terkait bagaimana cara menjaga kesehatan organ reproduksi',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: regular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Baca Artikel',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget article2() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/notif-food');
        },
        child: Container(
          height: 115,
          width: double.infinity,
          padding: EdgeInsets.all(defaultMargin),
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: fourthColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/letter.png',
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
                  children: [
                    Text(
                      'POLA MAKAN SEHAT SEIMBANG',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      '10 pedoman gizi seimbang yang relevan di kehidupan sekarang dan bagaimana cara mengatur porsi dalam satu kali makan',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: regular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Baca Artikel',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget article3() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/notif-tablets');
        },
        child: Container(
          height: 115,
          width: double.infinity,
          padding: EdgeInsets.all(defaultMargin),
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: fourthColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/letter.png',
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
                  children: [
                    Text(
                      'TABLET TAMBAH DARAH',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Bagaimana cara konsumsi tablet tambah darah dengan tepat? lalu bagaimana agar terhindar dari anemia di saat kondisi pandemi covid-19 ini?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: regular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Baca Artikel',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget article4() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/notif-activity');
        },
        child: Container(
          height: 115,
          width: double.infinity,
          padding: EdgeInsets.all(defaultMargin),
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: fourthColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/letter.png',
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
                  children: [
                    Text(
                      'AKTIFITAS FISIK',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Beragam jenis aktifitas fisik yang dapat bantu menjaga kesehatan tubuh anda supaya terhindar dari segala macam penyakit dan menjaga tubuh agar tetap sehat',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: regular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Baca Artikel',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget article5() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/notif-prokes');
        },
        child: Container(
          height: 115,
          width: double.infinity,
          padding: EdgeInsets.all(defaultMargin),
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: fourthColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/letter.png',
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
                  children: [
                    Text(
                      'PROTOKOL KESEHATAN',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Jaga diri anda dan keluarga dari virus corona dengan Gerakan Masyarakat Hidup Sehat (GERMAS)',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: regular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Baca Artikel',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                          ),
                        )
                      ],
                    ),
                  ],
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
            'Halo, Selamat datang',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/menu-page');
            },
            icon: Icon(
              Icons.menu,
              color: primaryColor,
              size: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                final List<HistoryNotificationModel>? result =
                    await Navigator.of(context).pushNamed('/notifications-page')
                        as List<HistoryNotificationModel>;

                setState(() {
                  mockHistoryNotificationModel =
                      result ?? mockHistoryNotificationModel;
                });
              },
              padding: const EdgeInsets.only(right: 25),
              icon: Badge(
                badgeContent: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    mockHistoryNotificationModel
                        .where((e) => e.isRead == false)
                        .length
                        .toString(),
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: bold,
                    ),
                  ),
                ),
                badgeColor: backgroundColor,
                child: Icon(
                  Icons.notifications,
                  color: primaryColor,
                  size: 30,
                ),
              ),
            ),
          ],
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
                'Riwayat Data Anda',
                style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              informationSubject(
                uid: loggedInUser.uid,
              ),
              const SizedBox(
                height: 15,
              ),
              activitySubject(
                uid: loggedInUser.uid,
              ),
              const SizedBox(
                height: 15,
              ),
              intakeSubject(),
              const SizedBox(
                height: 15,
              ),
              antrhopometriSubject(
                uid: loggedInUser.uid,
              ),
              const SizedBox(
                height: 15,
              ),
              hemoglobinSubject(),
              const SizedBox(
                height: 15,
              ),
              knowledgeSubject(),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Artikel Terkait',
                style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              article1(),
              article2(),
              article3(),
              article4(),
              article5(),
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
