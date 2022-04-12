import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class FormAntrhopometri extends StatelessWidget {
  const FormAntrhopometri({Key? key}) : super(key: key);

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
                        hintText: 'Tinggi badan',
                        hintStyle: primaryTextStyle,
                        counterText: "",
                        border: InputBorder.none,
                      ),
                      maxLength: 3,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'CM',
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
                        hintText: 'Berat badan',
                        hintStyle: primaryTextStyle,
                        counterText: "",
                        border: InputBorder.none,
                      ),
                      maxLength: 3,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'KG',
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
                        hintText: 'Lingkar lengan',
                        hintStyle: primaryTextStyle,
                        counterText: "",
                        border: InputBorder.none,
                      ),
                      maxLength: 3,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'CM',
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
        margin: const EdgeInsets.only(top: 30),
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
    );
  }
}
