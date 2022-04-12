import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class HistoryFormIntake extends StatelessWidget {
  const HistoryFormIntake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backButton() {
      return Container(
        height: 45,
        width: 130,
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home-page');
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          child: Text(
            'Kembali',
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
                  'Riwayat Data Asupan Subyek',
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
        child: Column(
          children: [
            SizedBox(
              height: 180,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image_empty.png',
                  width: 250,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Riwayat Data Kosong',
              style: primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
            ),
            SizedBox(
              height: 15,
            ),
            backButton(),
          ],
        ),
      ),
    );
  }
}
