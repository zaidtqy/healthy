import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class NotifActivity extends StatelessWidget {
  const NotifActivity({Key? key}) : super(key: key);

  Widget articleDailyActivity() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Aktifitas Fisik 30 Menit Sehari',
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
                Image.asset('assets/Aktifitas Fisik 31.png'),
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

  Widget articleTypesAct() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Jenis Aktifitas Fisik',
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. Aktifitas fisik harian',
                      style: primaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            'Jenis aktifitas yang pertama ada dalam kehidupan anda sehari-hari. Kegiatan sehari-hari dalam mengurus rumah bisa membantu anda untuk membakar kalori yang didapatkan dari makanan yang dikonsumsi. Seperti misalnya adalah mencuci baju, mengepel, jalan kaki, membersihkan jendela, berkebun, menyetrika, bermain dengan anak, dan sebagainya. Kalori yang terbakar bisa 50-200 kcal per kegiatan.',
                            style: primaryTextStyle.copyWith(
                              fontSize: 13,
                              fontWeight: medium,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2. Latihan Fisik',
                      style: primaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            'Latihan fisik adalah aktifitas yang dilakukan secara terstruktur dan terencana misalnya adalah jalan kaki, jongging, push up, peregangan, senam aerobik, bersepeda, dan sebagainya. Dilihat dari kegiatannya, latihan fisik memang seringkali disatukategorikan dengan olahraga.',
                            style: primaryTextStyle.copyWith(
                              fontSize: 13,
                              fontWeight: medium,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3. Olahraga',
                      style: primaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            'Olahraga didefinisikan sebagai aktifitas fisik yang terstruktur dan terencana dengan mengikuti aturan-aturan yang berlaku dengan tujuan tidak hanya membuat tubuh jadi lebih bugar namun juga untuk mendapatkan prestasi. Diantaranya yang termasuk dalam olahraga seperti sepak bola, bulutangkis, basket, berenang, dan sebagainya.',
                            style: primaryTextStyle.copyWith(
                              fontSize: 13,
                              fontWeight: medium,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
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

  Widget articleMaxAct() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Mendapatkan Aktifitas Fisik Maksimal',
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Text(
                            'Untuk mendapatkan hasil dari aktifitas fisik yang maksimal direkomendasikan untuk melakukannya dengan prinsip BBTT yaitu Baik, Benar, Terukur, dan Teratur. Baik adalah melakukan aktifitas fisik sesuai dengan kemampuannya. Benar adalah aktifitas yang dilakukan secara bertahap mulai dari pemanasan dan diakhiri dengan pendinginan atau peregangan. Terukur adalah aktifitas fisik yang diukur intensitas dan juga waktunya. Terakhir adalah aktifitas fisik yang dilakukan secara teratur sebanyak 3-5 kali dalam seminggu.',
                            style: primaryTextStyle.copyWith(
                              fontSize: 13,
                              fontWeight: medium,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                  'Artikel Aktifitas Fisik',
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
            articleDailyActivity(),
            articleTypesAct(),
            articleMaxAct()
          ],
        ),
      ),
    );
  }
}
