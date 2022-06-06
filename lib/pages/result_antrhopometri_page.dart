import 'package:flutter/material.dart';
import 'package:healthy/models/antrhopometri_model.dart';
import 'package:healthy/theme.dart';

class ResultAntrhopometri extends StatelessWidget {
  final HistoryAntrhopoModel historyAntrhopoModel;

  const ResultAntrhopometri({
    Key? key,
    required this.historyAntrhopoModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    historyAntrhopoModel.date,
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

    Widget anthropoResult({required AntrhopoModel antrhopoModel}) {
      final height = (double.parse(antrhopoModel.antrhopoHeight) / 100) *
          (double.parse(antrhopoModel.antrhopoHeight) / 100);
      final weight = double.parse(antrhopoModel.antrhopoWeight);

      final imt = weight / height;

      final double x = double.parse('$imt');

      final String result = x.toStringAsFixed(1);

      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tinggi Badan',
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
                        antrhopoModel.antrhopoHeight,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'CM',
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Berat Badan',
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
                        antrhopoModel.antrhopoWeight,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'KG',
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lingkar Lengan Atas',
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
                        antrhopoModel.antrhopoSizeRound,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'CM',
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
                'Berdasarkan hasil perhitungan data diatas, didapat nilai Indeks Massa Tubuh (IMT) anda:',
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
                      result,
                      style: primaryTextStyle.copyWith(
                        fontSize: 25,
                        fontWeight: bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Kg/m2',
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
                'Indeks Massa Tubuh (IMT)',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'IMT < 17,0 Kg/m2                 :    Sangat Kurus.',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
              Text(
                '17,0 Kg/m2  - 18,4 Kg/m2   :    Kurus.',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
              Text(
                '18,5 Kg/m2  - 25,0 Kg/m2   :    Normal.',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
              Text(
                '25,1 Kg/m2  - 27,0 Kg/m2   :    Kelebihan (Grade 1).',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
              Text(
                '> 27,0 Kg/m2                        :    Kelebihan (Grade 2).',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ],
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
            'Data Antrhopometri',
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
            dateInput(),
            Expanded(
              child: ListView.builder(
                itemCount: historyAntrhopoModel.antrhopoModel.length,
                itemBuilder: (context, index) => anthropoResult(
                    antrhopoModel: historyAntrhopoModel.antrhopoModel[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
