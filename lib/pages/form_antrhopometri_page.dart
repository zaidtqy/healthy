import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthy/models/antrhopometri_model.dart';
import 'package:healthy/models/user_model.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/services/antrhopometri_service.dart';
import 'package:healthy/theme.dart';
import 'package:intl/intl.dart';

class FormAntrhopometri extends StatefulWidget {
  const FormAntrhopometri({Key? key}) : super(key: key);

  @override
  State<FormAntrhopometri> createState() => _FormAntrhopometriState();
}

class _FormAntrhopometriState extends State<FormAntrhopometri> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // controller
  final heightFormController = TextEditingController();
  final weightFormController = TextEditingController();
  final sizeRoundFormController = TextEditingController();

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
        .then((value) {
      // ignore: unnecessary_this
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  void dispose() {
    heightFormController.dispose();
    weightFormController.dispose();
    sizeRoundFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget heightForm() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tinggi Badan',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: heightFormController,
              style: primaryTextStyle,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Form ini Harus Diisi");
                }
                return null;
              },
              onSaved: (value) {
                heightFormController.text = value!;
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
                hintText: 'Tinggi badan (CM)',
                hintStyle: primaryTextStyle,
                counterText: "",
              ),
              maxLength: 3,
            ),
          ],
        ),
      );
    }

    Widget weightForm() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Berat Badan',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: weightFormController,
              style: primaryTextStyle,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Form ini Harus Diisi");
                }
                return null;
              },
              onSaved: (value) {
                weightFormController.text = value!;
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
                hintText: 'Berat badan (KG)',
                hintStyle: primaryTextStyle,
                counterText: "",
              ),
              maxLength: 3,
            ),
          ],
        ),
      );
    }

    Widget sizeRoundForm() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lingkar Lengan Atas',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: sizeRoundFormController,
              style: primaryTextStyle,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Form ini Harus Diisi");
                }
                return null;
              },
              onSaved: (value) {
                sizeRoundFormController.text = value!;
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
                hintText: 'Lingkar lengan (CM)',
                hintStyle: primaryTextStyle,
                counterText: "",
              ),
              maxLength: 3,
            ),
          ],
        ),
      );
    }

    Widget saveButton() {
      return Container(
        height: 45,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            save(
              user: UserModel(
                uid: loggedInUser.uid,
                name: loggedInUser.name,
                email: loggedInUser.email,
                phone: loggedInUser.phone,
              ),
              date: DateFormat("EEEE, dd/MM/yyyy (hh:mm a)", "id_ID")
                  .format(DateTime.now()),
              height: heightFormController.text,
              weight: weightFormController.text,
              sizeRound: sizeRoundFormController.text,
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
          flexibleSpace: SafeArea(
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/back.png',
                    width: 20,
                  ),
                ),
                Text(
                  'Data Antrhopometri',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
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
              heightForm(),
              weightForm(),
              sizeRoundForm(),
              saveButton(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void save({
    required UserModel user,
    required String date,
    required String height,
    required String weight,
    required String sizeRound,
  }) async {
    if (_formKey.currentState!.validate()) {
      HistoryAntrhopoModel antrhopoModel = HistoryAntrhopoModel(
        user: user,
        date: date,
        antrhopoModel: [
          AntrhopoModel(
            antrhopoHeight: height,
            antrhopoWeight: weight,
            antrhopoSizeRound: sizeRound,
          ),
        ],
      );
      await AntrhopoService().createAntrhopo(antrhopoModel);

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
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
              'Mohon pastikan tidak ada form yang belum diisi',
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
}
