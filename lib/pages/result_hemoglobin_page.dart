import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class ResultHemoglobin extends StatelessWidget {
  const ResultHemoglobin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Image.asset(
        'assets/image_hb.png',
        width: 360,
        height: 170,
      );
    }

    Widget dateInput() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tanggal Input Data',
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
                color: primaryColor.withOpacity(0.2),
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
                      style: primaryTextStyle,
                      decoration: InputDecoration(
                        hintText: '29/03/2022',
                        hintStyle: primaryTextStyle,
                        counterText: "",
                        border: InputBorder.none,
                      ),
                      maxLength: 45,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget hbForm() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
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
                color: primaryColor.withOpacity(0.2),
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
                      enabled: false,
                      keyboardType: TextInputType.phone,
                      style: primaryTextStyle,
                      decoration: InputDecoration(
                        hintText: '20',
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
        child: ListView(
          children: [
            image(),
            dateInput(),
            hbForm(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Keterangan',
              style: primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Berdasarkan hasil perhitungan data diatas, nilai Hb anda adalah: ',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
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
                color: primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    ' ',
                    style: primaryTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '20',
                    style: primaryTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: bold,
                    ),
                  ),
                  Spacer(),
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
            const SizedBox(
              height: 10,
            ),
            Text(
              'Hemoglobin (Hb)',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Nilai Hb < 12 g/dL          :     Anemia.',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            Text(
              'Nilai Hb > 12 g/dL          :     Tidak Anemia.',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
