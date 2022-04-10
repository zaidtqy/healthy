import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget info() {
      return Container(
        height: 94,
        width: double.infinity,
        padding: EdgeInsets.all(defaultMargin),
        margin: EdgeInsets.only(top: 30),
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
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TETAP JAGA PROTOKOL KESEHATAN',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dimana pun kamu berada, tetap jaga protokol kesehatan ya. Gunakan masker dengan benar, Mencuci tangan, Menjaga Jarak, dan Hindari kerumunan.',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: fourthColor,
          automaticallyImplyLeading: false,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.all(
                defaultMargin,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/menu.png',
                    width: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Halo, Selamat datang',
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: bold,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/bell.png',
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            children: [
              info(),
            ],
          ),
        ),
      ),
    );
  }
}
