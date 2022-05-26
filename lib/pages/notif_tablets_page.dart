import 'package:flutter/material.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class NotifTablets extends StatelessWidget {
  const NotifTablets({Key? key}) : super(key: key);

  Widget articleConsumTablets() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: primaryColor),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Konsumsi Tablet Tambah Darah',
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
                Image.asset('assets/Konsumsi Tablet Darah 1.png'),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/Konsumsi Tablet Darah 2 1.png'),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/Konsumsi Tablet Darah 3 1.png'),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/Konsumsi Tablet Darah 4 1.png'),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/Konsumsi Tablet Darah 5 1.png'),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/Konsumsi Tablet Darah 6 1.png'),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/Konsumsi Tablet Darah 7 1.png'),
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
          'Anemia? Yuk Minum Tablet Tambah Darah',
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
                            'Bagaimana cara mengkonsumsi tablet tambah darah dengan baik dan benar?',
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
                        'https://promkes.kemkes.go.id/download/fpbn/files283TTD_REMATRI_OK2.pdf',
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
              'Artikel Konsumsi Tablet Tambah Darah',
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
              articleConsumTablets(),
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
            ],
          ),
        ),
      ),
    );
  }
}
