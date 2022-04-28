import 'package:flutter/material.dart';
import 'package:healthy/models/activity_model.dart';
import 'package:healthy/theme.dart';

class ResultActivity extends StatelessWidget {
  final HistoryActivityModel historyActivityModel;

  const ResultActivity({Key? key, required this.historyActivityModel})
      : super(key: key);

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
                    historyActivityModel.date,
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

    Widget actResult({required ActivityModel activityModel}) {
      return Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activityModel.descriptionActivity,
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
                  width: 195,
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
                        activityModel.activityName,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lama Waktu',
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
                  width: 155,
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
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/timer.png',
                          width: 20,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          activityModel.activityTime,
                          style: primaryTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: medium,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Menit',
                          style: primaryTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                  'Data Aktifitas Fisik Subyek',
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
        child: Column(
          children: [
            dateInput(),
            Expanded(
              child: ListView.builder(
                itemCount: historyActivityModel.activityModel.length,
                itemBuilder: (context, index) => actResult(
                    activityModel: historyActivityModel.activityModel[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
