import 'package:flutter/material.dart';
import 'package:healthy/models/antrhopometri_model.dart';
import 'package:healthy/pages/result_antrhopometri_page.dart';
import 'package:healthy/theme.dart';

class HistoryFormAntrhopometri extends StatelessWidget {
  const HistoryFormAntrhopometri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget antrhopometriSubject(
        {required HistoryAntrhopoModel historyAntrhopoModel}) {
      return Container(
        height: 168,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 10),
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
                  'Data Antrhopometri',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  historyAntrhopoModel.date,
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
                  'assets/height.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${historyAntrhopoModel.antrhopoModel.last.height} CM',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
                const SizedBox(
                  width: 68,
                ),
                Image.asset(
                  'assets/weight.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${historyAntrhopoModel.antrhopoModel.last.weight} Kg',
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
                  'assets/file.png',
                  width: 15,
                ),
                const SizedBox(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ResultAntrhopometri(
                            historyAntrhopoModel: historyAntrhopoModel,
                          );
                        },
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Lihat Detail',
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

    Widget backButton() {
      return Container(
        height: 45,
        width: 130,
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home-page');
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          child: Text(
            'Kembali',
            style: backgroundTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
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
                  'Riwayat Data Anthopometri',
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
        child: (mockHistoryAntrhopoModel.isNotEmpty)
            ? ListView.builder(
                padding: const EdgeInsets.only(top: 30),
                itemCount: mockHistoryAntrhopoModel.length,
                itemBuilder: (context, index) {
                  return antrhopometriSubject(
                    historyAntrhopoModel: mockHistoryAntrhopoModel[index],
                  );
                },
              )
            : Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 180,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image_empty.png',
                          width: 250,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Riwayat Data Antrhopometri Kosong',
                      style: primaryTextStyle.copyWith(
                          fontSize: 15, fontWeight: bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    backButton(),
                  ],
                ),
              ),
      ),
    );
  }
}
