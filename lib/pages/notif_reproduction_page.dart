// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class NotifReproduction extends StatelessWidget {
  const NotifReproduction({Key? key}) : super(key: key);

  Widget articleReproduction() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Kesehatan Organ Reproduksi',
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
                Image.asset('assets/Kesehatan Organ Reproduksi 1.png'),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/Kesehatan Organ Reproduksi 2 1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget articleSexEdu() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Hindari Seks Pra Nikah',
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
                Image.asset('assets/Hindari Seks Pra Nikah 1.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget articlePragnant() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Hindari Kehamilan Usia Remaja',
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
                Image.asset('assets/Hindari Seks Pra Nikah 2 1.png'),
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
          '5 Cara Merawat Organ Reproduksi',
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
                            'Cara menjaga organ reproduksi dengan baik (KEMENKES)',
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
                        'http://kesmas-id.com/cari-tahu-5-cara-merawat-organ-reproduksi-klik-disini/',
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

  Widget link2() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Flayer Kesehatan Organ Reproduksi',
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
                            'Bagaimana cara menjaga kesehatan organ reproduksi (KEMENKES)',
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
                        'https://promkes.kemkes.go.id/flyer-cara-menjaga-kesehatan-organ-reproduksi',
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

  Widget link3() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Remaja Sehat Hindari Seks Pra Nikah',
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
                            'Hindari seks pra nikah agar terhindar dari berbagai penyakit',
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
                        'https://www.facebook.com/KementerianKesehatanRI/photos/pb.662119780484792.-2207520000.1446423247./1141828782513887/?type=3&theater',
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

  Widget link4() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Menjaga Diri Dari Infeksi Kelamin Menular',
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
                            'Menjaga diri dari risiko transmisi/penularan infeksi penyakit kelamin menular',
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
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
          (route) => false,
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: fourthColor,
            automaticallyImplyLeading: false,
            elevation: 5,
            title: Text(
              'Artikel Kesehatan Reproduksi',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: bold,
              ),
            ),
            leading: IconButton(
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
                (route) => false,
              ),
              icon: const Icon(Icons.chevron_left),
              color: primaryColor,
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Text(
                  'Artikel',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                    color: primaryColor.withOpacity(0.5),
                  ),
                ),
              ),
              articleReproduction(),
              articleSexEdu(),
              articlePragnant(),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Text(
                  'Situs Artikel Terkait',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                    color: primaryColor.withOpacity(0.5),
                  ),
                ),
              ),
              link1(),
              link2(),
              link3(),
              link4(),
            ],
          ),
        ),
      ),
    );
  }
}
