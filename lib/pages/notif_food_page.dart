import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class NotifFood extends StatelessWidget {
  const NotifFood({Key? key}) : super(key: key);

  Widget articleNutrient() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Pedoman Gizi Sehat Seimbang',
          style: primaryTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 10,
            ),
            child: Column(
              children: [
                Image.asset('assets/Pedoman Gizi Seimbang 1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget articlePortion() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Panduan Porsi Sekali Makan',
          style: primaryTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 10,
            ),
            child: Column(
              children: [
                Image.asset('assets/Porsi Makan 1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget link1() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Resiko Infeksi Penyakit Kelamin',
          style: primaryTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
        ),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            'Menjaga diri dari resiko transmisi infeksi penyakit kelamin menular',
                            style: primaryTextStyle.copyWith(
                              fontSize: 13,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: Text(
                        'Lihat',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: bold,
                        ),
                      ),
                      onTap: () => launch(
                        'https://sehatnegeriku.kemkes.go.id/baca/rilis-media/20151130/5513794/perilaku-sehat-awal-pencegahan-hiv-dan-aids/',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                  'Artikel Pola Makan Sehat Seimbang',
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
        margin: const EdgeInsets.symmetric(),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            articleNutrient(),
            articlePortion(),
          ],
        ),
      ),
    );
  }
}
