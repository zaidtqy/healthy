// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:healthy/helpers/utils.dart';
import 'package:healthy/models/antrhopometri_model.dart';
import 'package:healthy/pages/result_antrhopometri_page.dart';
import 'package:healthy/theme.dart';

class HistoryFormAntrhopometri extends StatefulWidget {
  final List<HistoryAntrhopoModel> listAntrhopoModel;

  const HistoryFormAntrhopometri({
    Key? key,
    required this.listAntrhopoModel,
  }) : super(key: key);

  @override
  State<HistoryFormAntrhopometri> createState() =>
      _HistoryFormAntrhopometriState();
}

class _HistoryFormAntrhopometriState extends State<HistoryFormAntrhopometri> {
  @override
  Widget build(BuildContext context) {
    Widget antrhopometriSubject(
        {required HistoryAntrhopoModel historyAntrhopoModel}) {
      final result = Utils.countData(historyAntrhopoModel);

      final convertDesc = Utils.converToDesc(result);

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
                  convertDesc,
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
          itemCount: widget.listAntrhopoModel.length,
          itemBuilder: (context, index) {
            return antrhopometriSubject(
              historyAntrhopoModel: widget.listAntrhopoModel[index],
            );
          },
        ),
      ),
    );
  }
}
