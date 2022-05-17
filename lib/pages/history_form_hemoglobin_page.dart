import 'package:flutter/material.dart';
import 'package:healthy/helpers/utils.dart';
import 'package:healthy/models/hemoglobin_model.dart';
import 'package:healthy/pages/result_hemoglobin_page.dart';
import 'package:healthy/theme.dart';

class HistoryFormHemoglobin extends StatefulWidget {
  final List<HistoryHBModel> listHBModel;

  const HistoryFormHemoglobin({
    Key? key,
    required this.listHBModel,
  }) : super(key: key);

  @override
  State<HistoryFormHemoglobin> createState() => _HistoryFormHemoglobinState();
}

class _HistoryFormHemoglobinState extends State<HistoryFormHemoglobin> {
  @override
  Widget build(BuildContext context) {
    Widget hemoglobinSubject({required HistoryHBModel historyHBModel}) {
      final result = Utils.getDataAnemia(historyHBModel);
      final anemia = Utils.descAnemia(result);

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
                  'Data Hemoglobin',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  historyHBModel.date,
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
                  'assets/blood.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${historyHBModel.hbModel.last.hemoglobin} Hb',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
                const SizedBox(
                  width: 68,
                ),
                Image.asset(
                  'assets/report.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  anemia,
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
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
                  'Anemia jika nilai Hb <12 g/Dl dan Tidak Anemia jika Hb >12 g/Dl',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
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
                          return ResultHemoglobin(
                            historyHBModel: historyHBModel,
                          );
                        },
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
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
            'Riwayat Data Hemoglobin (Hb)',
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
          itemCount: widget.listHBModel.length,
          itemBuilder: (context, index) {
            return hemoglobinSubject(
              historyHBModel: widget.listHBModel[index],
            );
          },
        ),
      ),
    );
  }
}
