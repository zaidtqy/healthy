import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget notifReproduction() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/notif-repro');
        },
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.2),
            border: Border(
              bottom: BorderSide(width: 0.5, color: primaryColor),
            ),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 15,
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: defaultMargin,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/information.png',
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Kesehatan Reproduksi',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: semibold,
                            ),
                          ),
                          const SizedBox(
                            width: 152,
                          ),
                          Text(
                            '25/03/2022',
                            style: primaryTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: semibold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Cari Tau Tentang Kesehatan Reproduksi, Yuk!',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Udah tau belum tentang kesehatan reproduksi? kalo belum, Yuk cari tau disini!',
                        style: primaryTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget notifFood() {
      return Container(
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.2),
          border: Border(
            bottom: BorderSide(width: 0.5, color: primaryColor),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 15,
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: defaultMargin,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/information.png',
                      width: 20,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Pola Makan Sehat Seimbang',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semibold,
                          ),
                        ),
                        const SizedBox(
                          width: 126,
                        ),
                        Text(
                          '24/03/2022',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Makanan yang Kamu Makan Perlu diatur loh!',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Jangan asal makan ya, nanti kamu sakit. Kalo kamu sakit ada yang mau perhatiin kamu ga?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget notifTablet() {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: primaryColor),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 15,
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: defaultMargin,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/information.png',
                      width: 20,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Konsumsi Tablet Tambah Darah',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semibold,
                          ),
                        ),
                        const SizedBox(
                          width: 113,
                        ),
                        Text(
                          '23/03/2022',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Gais, Yuk Tetap Sehat! BEBAS ANEMIA!',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cocok nih buat kamu yang pengen tau tentang anemia, baca selengkapnya disini!',
                      style: primaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget notifActivity() {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: primaryColor),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 15,
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: defaultMargin,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/information.png',
                      width: 20,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Aktifitas Fisik',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semibold,
                          ),
                        ),
                        const SizedBox(
                          width: 195,
                        ),
                        Text(
                          '22/03/2022',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Biar sehat, jangan lupa gerak ya!',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tetap jaga tubuhmu agar terus sehat ya, aktifitas kecil juga gamasalah kok.',
                      style: primaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget notifProkes() {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: primaryColor),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 15,
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: defaultMargin,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/information.png',
                      width: 20,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Protokol Kesehatan',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semibold,
                          ),
                        ),
                        const SizedBox(
                          width: 164,
                        ),
                        Text(
                          '22/03/2022',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Eittss! Jangan Lengah Ya, Covid-19 masi ada!',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Udah vaksin bukan berarti bebas dari virus, tetap jaga sesama ya biar semua sehat. ',
                      style: primaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                  'Notifikasi',
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
            notifReproduction(),
            notifFood(),
            notifTablet(),
            notifActivity(),
            notifProkes(),
          ],
        ),
      ),
    );
  }
}
