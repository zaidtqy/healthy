// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:healthy/models/antrhopometri_model.dart';
import 'package:healthy/pages/result_antrhopometri_page.dart';
import 'package:healthy/theme.dart';

class HistoryFormAntrhopometri extends StatelessWidget {
  final List<HistoryAntrhopoModel> listAntrhopoModel;

  const HistoryFormAntrhopometri({
    Key? key,
    required this.listAntrhopoModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget antrhopometriSubject(
        {required HistoryAntrhopoModel historyAntrhopoModel}) {
      final height = (double.parse(
                  historyAntrhopoModel.antrhopoModel.last.antrhopoHeight) /
              100) *
          (double.parse(
                  historyAntrhopoModel.antrhopoModel.last.antrhopoHeight) /
              100);
      final weight =
          double.parse(historyAntrhopoModel.antrhopoModel.last.antrhopoWeight);

      final imt = weight / height;

      final double x = double.parse('$imt');

      final String d = x.toStringAsFixed(1);

      final double result = double.parse(d);

      const String desc = '-';

      if (result <= 17.0) {
        desc.replaceAll('-', 'Sangat Kurus');
        // String desc = "Sangat Kurus";
      } else if (result > 17.0 && result <= 18.4) {
        desc.replaceAll('-', 'Kurus');
        // String desc = "Kurus";
      } else if (result > 18.4 && result <= 25.0) {
        desc.replaceAll('-', 'Normal');
        // String desc = "Normal";
      } else if (result > 25.0 && result <= 27.0) {
        debugPrint('masokk');
        const String desc = 'Kelebihan Berat Badan (Grade 1)';
        // String description = 'Kelebihan Berat Badan (Grade 1)';
        // desc.replaceAll('-', 'Kelebihan Berat Badan (Grade 1)');
        // String desc = "Kelebihan Berat Badan (Grade 1)";
      } else if (result >= 27.0) {
        desc.replaceAll('-', 'Kelebihan Berat Badan (Grade 2)');
        // String desc = "Kelebihan Berat Badan (Grade 2)";
      } else {
        desc.replaceAll('-', 'Keterangan tidak ditemukan');
        // String desc = "Keterangan tidak ditemukan";
      }

      return Container(
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
                  '${historyAntrhopoModel.antrhopoModel.last.antrhopoHeight} CM',
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
                  '${historyAntrhopoModel.antrhopoModel.last.antrhopoWeight} Kg',
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
                  desc,
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
              height: 45,
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

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: fourthColor,
          automaticallyImplyLeading: false,
          elevation: 5,
          title: Text(
            'Riwayat Data Antrhopometri',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(context),
            icon: const Icon(Icons.chevron_left),
            color: primaryColor,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 30),
          itemCount: listAntrhopoModel.length,
          itemBuilder: (context, index) {
            return antrhopometriSubject(
              historyAntrhopoModel: listAntrhopoModel[index],
            );
          },
        ),
      ),
    );
  }
}
