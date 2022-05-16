import 'package:flutter/material.dart';
import 'package:healthy/models/hemoglobin_model.dart';
import 'package:healthy/theme.dart';

class ResultHemoglobin extends StatelessWidget {
  final HistoryHBModel historyHBModel;

  const ResultHemoglobin({Key? key, required this.historyHBModel})
      : super(key: key);

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
                    'assets/union.png',
                    width: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    historyHBModel.date,
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget hbResult({required HbModel hbModel}) {
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
                    'assets/blood.png',
                    width: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    hbModel.hemoglobin,
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: medium,
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
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Keterangan',
                  style:
                      primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
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
                      const Spacer(),
                      Text(
                        hbModel.hemoglobin,
                        style: primaryTextStyle.copyWith(
                          fontSize: 25,
                          fontWeight: bold,
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
            )
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
            'Data Hemoglobin (Hb)',
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
        child: Column(
          children: [
            image(),
            dateInput(),
            Expanded(
              child: ListView.builder(
                itemCount: historyHBModel.hbModel.length,
                itemBuilder: (context, index) =>
                    hbResult(hbModel: historyHBModel.hbModel[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
