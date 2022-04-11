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

    Widget menuInformation() {
      return Column(
        children: [
          Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/user.png',
                width: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
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
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/run.png',
                width: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
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
            margin: EdgeInsets.only(top: 30),
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
          SizedBox(
            height: 5,
          ),
          Container(
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
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/weight.png',
                width: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
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
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/blood.png',
                width: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
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
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: fourthColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/books.png',
                width: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
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

    Widget informationSubject() {
      return Container(
        height: 166,
        width: double.infinity,
        padding: EdgeInsets.all(15),
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
                Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/user.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Mazaya Hurun\'in',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/placeholder.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Perum Kodim Blok D No 10 RT.005/002...',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
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

    Widget activitySubject() {
      return Container(
        height: 166,
        width: double.infinity,
        padding: EdgeInsets.all(15),
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
                Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/clock.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '40 Menit',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/date.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Bangun tidur - jam 12 siang',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  'assets/run.png',
                  width: 15,
                ),
                SizedBox(
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
                  'Berlari',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
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

    Widget intakeSubject() {
      return Container(
        height: 166,
        width: double.infinity,
        padding: EdgeInsets.all(15),
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
                Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/cutlery.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Data Harian Makan',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/file.png',
                  width: 15,
                ),
                SizedBox(
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
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

    Widget antrhopometriSubject() {
      return Container(
        height: 166,
        width: double.infinity,
        padding: EdgeInsets.all(15),
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
                Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/height.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '165 CM',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
                SizedBox(
                  width: 68,
                ),
                Image.asset(
                  'assets/weight.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '73 Kg',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/file.png',
                  width: 15,
                ),
                SizedBox(
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
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

    Widget hemoglobinSubject() {
      return Container(
        height: 166,
        width: double.infinity,
        padding: EdgeInsets.all(15),
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
                Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/blood.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '13 Hb',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
                SizedBox(
                  width: 68,
                ),
                Image.asset(
                  'assets/report.png',
                  width: 15,
                ),
                SizedBox(
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
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/file.png',
                  width: 15,
                ),
                SizedBox(
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
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
        height: 166,
        width: double.infinity,
        padding: EdgeInsets.all(15),
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
                Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/books.png',
                  width: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Pengetahuan Reproduksi dan Gizi',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/file.png',
                  width: 15,
                ),
                SizedBox(
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
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

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: fourthColor,
          automaticallyImplyLeading: false,
          elevation: 5,
          flexibleSpace: SafeArea(
            child: Container(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/menu.png',
                      width: 20,
                    ),
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
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/bell.png',
                      width: 20,
                    ),
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
          child: ListView(
            children: [
              info(),
              Row(
                children: [
                  menuInformation(),
                  Spacer(),
                  menuActivity(),
                  Spacer(),
                  menuIntake(),
                ],
              ),
              Row(
                children: [
                  menuAntrhopometri(),
                  Spacer(),
                  menuHb(),
                  Spacer(),
                  menuKnowledge(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              informationSubject(),
              SizedBox(
                height: 15,
              ),
              activitySubject(),
              SizedBox(
                height: 15,
              ),
              intakeSubject(),
              SizedBox(
                height: 15,
              ),
              antrhopometriSubject(),
              SizedBox(
                height: 15,
              ),
              hemoglobinSubject(),
              SizedBox(
                height: 15,
              ),
              knowledgeSubject(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
