import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthy/models/hemoglobin_model.dart';
import 'package:healthy/models/user_model.dart';
// import 'package:healthy/pages/history_form_hemoglobin_page.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/services/hemoglobin_service.dart';
import 'package:healthy/theme.dart';
import 'package:intl/intl.dart';

class FormHemoglobin extends StatefulWidget {
  const FormHemoglobin({Key? key}) : super(key: key);

  @override
  State<FormHemoglobin> createState() => _FormHemoglobinState();
}

class _FormHemoglobinState extends State<FormHemoglobin> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // controller
  final hbFormController = TextEditingController();

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
    hbFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Image.asset(
        'assets/image_hb.png',
        width: 360,
        height: 170,
      );
    }

    Widget hbForm() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Hemoglobin (Hb)',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: hbFormController,
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
                hbFormController.text = value!;
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
                    'assets/blood.png',
                    width: 20,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Masukkan Hb (g/dL)',
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
        margin: const EdgeInsets.only(
          top: 30,
        ),
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
              hb: hbFormController.text,
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
            'Data Hemoglobin (Hb)',
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
              image(),
              hbForm(),
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
    required String hb,
  }) async {
    if (_formKey.currentState!.validate()) {
      HistoryHBModel hbModel = HistoryHBModel(
        user: user,
        date: date,
        hbModel: [
          HbModel(
            hemoglobin: hb,
          ),
        ],
      );
      await HemoglobinService().createHb(hbModel);

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
}
