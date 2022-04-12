import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class HistoryFormActivity extends StatelessWidget {
  const HistoryFormActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget activitySubject() {
      return Container(
        height: 168,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: primaryColor,
          ),
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
                const Spacer(),
                Text(
                  '29/03/2022',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/clock.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '40 Menit',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/date.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Bangun tidur - jam 12 siang',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Image.asset(
                  'assets/run.png',
                  width: 15,
                ),
                const SizedBox(
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
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: primaryColor,
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Lihat Riwayat',
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: bold,
                    ),
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
                  'Riwayat Data Aktifitas Fisik Subyek',
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
            SizedBox(
              height: 20,
            ),
            activitySubject(),
            activitySubject(),
            activitySubject(),
            activitySubject(),
            activitySubject(),
            activitySubject(),
            activitySubject(),
            activitySubject(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
