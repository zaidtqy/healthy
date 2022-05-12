import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

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
