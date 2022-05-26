import 'package:flutter/material.dart';
import 'package:healthy/pages/home_page.dart';
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
          'Situs Pedoman Gizi Sehat Seimbang',
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
                            'Sepuluh pedoman gizi seimbang dalam Pedoman Umum Gizi Seimbang (PUGS)',
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
                        'http://p2ptm.kemkes.go.id/infographic-p2ptm/obesitas/apa-saja-sepuluh-pedoman-gizi-seimbang',
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
          'Situs Panduan Porsi Sekali Makan',
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
                            'Panduan tepat untuk porsi satu piring dengan gizi seimbang #HariGiziNasional',
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
                        'http://p2ptm.kemkes.go.id/infographic-p2ptm/obesitas/yuk-terapkan-konsep-isi-piringku-dalam-kehidupan-sehari-hari',
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
              'Artikel Pola Makan Sehat Seimbang',
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
              articleNutrient(),
              articlePortion(),
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
            ],
          ),
        ),
      ),
    );
  }
}
