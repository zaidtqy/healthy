import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthy/models/activity_model.dart';
import 'package:healthy/models/notification_model.dart';
import 'package:healthy/models/user_model.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/services/activity_service.dart';
import 'package:healthy/services/notification_service.dart';
import 'package:healthy/theme.dart';
import 'package:healthy/utils/utilities.dart';
import 'package:intl/intl.dart';

class FormActivityMorning extends StatefulWidget {
  const FormActivityMorning({Key? key}) : super(key: key);

  @override
  State<FormActivityMorning> createState() => _FormActivityMorningState();
}

class _FormActivityMorningState extends State<FormActivityMorning> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // controller
  final other1FormController = TextEditingController();
  final minutesAct1Controller = TextEditingController();

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel(uid: '1234');

  bool _isShowField1 = false;

  String? _valAct1;
  final _act1 = [
    "Berjalan",
    "Berlari",
    "Senam",
    "Berenang",
    "Duduk/Kegiatan Santai",
    "Kegiatan Lain"
  ];

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      // ignore: unnecessary_this
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  void dispose() {
    other1FormController.dispose();
    minutesAct1Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget act1Form() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bangun Tidur - Jam 12 Siang',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 225,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return ("Form ini Harus Diisi");
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Image.asset(
                      'assets/union.png',
                      width: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                hint: Text(
                  "Aktifitas",
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: medium,
                  ),
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: primaryColor,
                ),
                value: _valAct1,
                items: _act1.map((value) {
                  return DropdownMenuItem(
                    child: Text(
                      value,
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _valAct1 = value;
                    if (_valAct1 == _act1.last) {
                      setState(() {
                        _isShowField1 = true;
                      });
                    } else {
                      _isShowField1 = false;
                    }
                  });
                },
              ),
            ),
          ],
        ),
      );
    }

    Widget other1Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: TextFormField(
          controller: other1FormController,
          style: primaryTextStyle,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Form ini Harus Diisi");
            }
            return null;
          },
          onSaved: (value) {
            other1FormController.text = value!;
          },
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: primaryColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Image.asset(
                'assets/union.png',
                width: 20,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Kegiatan lain',
            hintStyle: primaryTextStyle,
          ),
        ),
      );
    }

    Widget minutesAct1() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lama Waktu',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 125,
              child: TextFormField(
                controller: minutesAct1Controller,
                style: primaryTextStyle,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return ("Form ini Harus Diisi");
                  }
                  return null;
                },
                onSaved: (value) {
                  minutesAct1Controller.text = value!;
                },
                decoration: InputDecoration(
                  label: const Text("Menit"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Image.asset(
                      'assets/union.png',
                      width: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: '0',
                  hintStyle: primaryTextStyle,
                  counterText: "",
                ),
                maxLength: 3,
              ),
            ),
          ],
        ),
      );
    }

    Widget act2Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jam 12 Siang - Jam 6 Sore',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
                color: disable,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 225,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: disable,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Image.asset(
                      'assets/disable.png',
                      width: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                hint: Text(
                  "Aktifitas",
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: medium,
                    color: disable,
                  ),
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: disable,
                ),
                value: null,
                items: null,
                onChanged: null,
              ),
            ),
          ],
        ),
      );
    }

    Widget minutesAct2() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lama Waktu',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
                color: disable,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 125,
              child: TextFormField(
                enabled: false,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  label: const Text("Menit"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Image.asset(
                      'assets/disable.png',
                      width: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: '0',
                  hintStyle: primaryTextStyle,
                  counterText: "",
                ),
                maxLength: 3,
              ),
            ),
          ],
        ),
      );
    }

    Widget act3Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jam 6 Sore - Jam 10 Malam',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
                color: disable,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 225,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: disable,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Image.asset(
                      'assets/disable.png',
                      width: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                hint: Text(
                  "Aktifitas",
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: medium,
                    color: disable,
                  ),
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: disable,
                ),
                value: null,
                items: null,
                onChanged: null,
              ),
            ),
          ],
        ),
      );
    }

    Widget minutesAct3() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lama Waktu',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
                color: disable,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 125,
              child: TextFormField(
                enabled: false,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  label: const Text("Menit"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Image.asset(
                      'assets/disable.png',
                      width: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: '0',
                  hintStyle: primaryTextStyle,
                  counterText: "",
                ),
                maxLength: 3,
              ),
            ),
          ],
        ),
      );
    }

    Widget act4Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jam 10 Malam - Bangun Pagi',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
                color: disable,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 225,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: disable,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Image.asset(
                      'assets/disable.png',
                      width: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                hint: Text(
                  "Aktifitas",
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: medium,
                    color: disable,
                  ),
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: disable,
                ),
                value: null,
                items: null,
                onChanged: null,
              ),
            ),
          ],
        ),
      );
    }

    Widget minutesAct4() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lama Waktu',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
                color: disable,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 125,
              child: TextFormField(
                enabled: false,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  label: const Text("Menit"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Image.asset(
                      'assets/disable.png',
                      width: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: '0',
                  hintStyle: primaryTextStyle,
                  counterText: "",
                ),
                maxLength: 3,
              ),
            ),
          ],
        ),
      );
    }

    Widget saveButton() {
      return Container(
        height: 45,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        child: TextButton(
          onPressed: () {
            createActivityNotification(
              user: UserModel(
                uid: loggedInUser.uid,
                name: loggedInUser.name,
                email: loggedInUser.email,
                phone: loggedInUser.phone,
              ),
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              logo: 'assets/information.png',
              type: 'Aktifitas Fisik',
              date: DateFormat("EEEE, dd/MM/yyyy (hh:mm a)", "id_ID")
                  .format(DateTime.now()),
              title:
                  'Biar tubuh tetap sehat, lakukan kegiatan yang produktif ya!',
              content:
                  'Tetap jaga tubuhmu agar terus sehat ya dengan beraktifitas minimal 30 menit sehari.',
              route: '4',
              isRead: false,
            );

            save(
              user: UserModel(
                uid: loggedInUser.uid,
                name: loggedInUser.name,
                email: loggedInUser.email,
                phone: loggedInUser.phone,
              ),
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              date: DateFormat("EEEE, dd/MM/yyyy (hh:mm a)", "id_ID")
                  .format(DateTime.now()),
              actMorning: _valAct1 ?? 'Data Kosong',
              otherActMorning: other1FormController.text,
              timeMorning: minutesAct1Controller.text,
            );
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          child: Text(
            'Simpan Data',
            style: backgroundTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
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
            'Data Aktifitas Fisik Subyek',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(context),
            icon: const Icon(Icons.chevron_left),
            color: primaryColor,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Row(
                children: [
                  act1Form(),
                  const Spacer(),
                  minutesAct1(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              if (_isShowField1) ...[
                other1Form(),
              ],
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  act2Form(),
                  const Spacer(),
                  minutesAct2(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  act3Form(),
                  const Spacer(),
                  minutesAct3(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  act4Form(),
                  const Spacer(),
                  minutesAct4(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              saveButton(),
            ],
          ),
        ),
      ),
    );
  }

  void save({
    required UserModel user,
    required String id,
    required String date,
    String? actMorning,
    String? otherActMorning,
    required String timeMorning,
  }) async {
    if (_formKey.currentState!.validate()) {
      String dataActMorning =
          (actMorning == 'Kegiatan Lain') ? otherActMorning! : actMorning!;
      // String dataAct12Clock = act12Clock!;
      // String dataAct18Clock = act18Clock!;
      // String dataActNight = actNight!;

      HistoryActivityModel activityModel = HistoryActivityModel(
        user: user,
        id: id,
        date: date,
        activityModel: [
          ActivityModel(
            activityName: dataActMorning,
            activityTime: timeMorning,
            descriptionActivity: 'Bangun Tidur - Jam 12 Siang',
          ),
        ],
      );
      await ActivityService().createActivity(activityModel);

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomePage()),
        ModalRoute.withName('/'),
      );

      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: " ",
        widget: Text(
          'Data Berhasil Disimpan!',
          style: primaryTextStyle.copyWith(
            fontSize: 25,
            fontWeight: semibold,
          ),
          textAlign: TextAlign.center,
        ),
        confirmBtnText: 'Oke',
        confirmBtnColor: primaryColor,
        confirmBtnTextStyle: TextStyle(color: backgroundColor, fontSize: 18),
      );
    } else {
      DateTime now = DateTime.now();
      String formatTime = DateFormat('HH:MM').format(now);
      debugPrint(formatTime);

      return CoolAlert.show(
        barrierDismissible: false,
        context: context,
        type: CoolAlertType.error,
        title: " ",
        widget: Column(
          children: [
            Text(
              'Data Gagal Disimpan!',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Mohon pastikan tidak ada form yang kosong',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        confirmBtnText: 'Mengerti',
        confirmBtnColor: primaryColor,
        confirmBtnTextStyle: TextStyle(color: backgroundColor, fontSize: 18),
      );
    }
  }

  Future<void> createActivityNotification({
    required UserModel user,
    required String id,
    required String logo,
    required String type,
    required String date,
    required String title,
    required String content,
    required String route,
    required bool isRead,
  }) async {
    if (_formKey.currentState!.validate()) {
      await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: createUniqueId(),
          channelKey: 'basic_channel',
          title:
              '${Emojis.body_flexed_biceps} Data Aktifitas Kamu Sudah Kami Rekam!',
          body:
              'Terima kasih sudah mengisi data aktifitas harian kamu. Tetap semangat menjalani aktifitas besok yaa',
        ),
      );

      HistoryNotificationModel notifModel = HistoryNotificationModel(
        user: user,
        id: id,
        logo: logo,
        type: type,
        date: date,
        title: title,
        content: content,
        route: route,
        isRead: isRead,
      );

      await NotificationService().createNotification(notifModel);

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomePage()),
        ModalRoute.withName('/'),
      );

      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: " ",
        widget: Text(
          'Data Berhasil Disimpan!',
          style: primaryTextStyle.copyWith(
            fontSize: 25,
            fontWeight: semibold,
          ),
          textAlign: TextAlign.center,
        ),
        confirmBtnText: 'Oke',
        confirmBtnColor: primaryColor,
        confirmBtnTextStyle: TextStyle(color: backgroundColor, fontSize: 18),
      );
    } else {}
  }
}
