import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

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
            save();
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
                  'Data Hemoglobin (Hb)',
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

  void save() async {
    if (_formKey.currentState!.validate()) {
      // await _auth
      //     .createUserWithEmailAndPassword(email: email, password: password)
      //     .then((value) => {postDetailsToFirestore()})
      //     .catchError((e) {
      //   Fluttertoast.showToast(msg: e!.message);
      // });
    }
  }
}
