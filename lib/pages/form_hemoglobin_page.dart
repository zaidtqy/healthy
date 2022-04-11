import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class FormHemoglobin extends StatelessWidget {
  const FormHemoglobin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        child: Image.asset(
          'assets/image_hb.png',
          width: 360,
          height: 170,
        ),
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
            Container(
              height: 45,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      style: primaryTextStyle,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Hb',
                        hintStyle: primaryTextStyle,
                        counterText: "",
                        border: InputBorder.none,
                      ),
                      maxLength: 3,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'g/dL',
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semibold,
                    ),
                  ),
                ],
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
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: TextButton(
          onPressed: () {},
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
                  onPressed: () {},
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
    );
  }
}
