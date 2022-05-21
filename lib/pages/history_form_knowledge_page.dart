import 'package:flutter/material.dart';
import 'package:healthy/models/knowledge_model.dart';
import 'package:healthy/pages/result_knowledge_page.dart';
import 'package:healthy/theme.dart';

class HistoryFormKnowledge extends StatelessWidget {
  final List<HistoryKnowledgeModel> listKnowledgeModel;

  const HistoryFormKnowledge({
    Key? key,
    required this.listKnowledgeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget knowledgeSubject(
        {required HistoryKnowledgeModel historyKnowledgeModel}) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
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
                  'Kesehatan Reproduksi dan Pola Makan',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  historyKnowledgeModel.date,
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
                  'assets/books.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Pengetahuan Reproduksi dan Gizi',
                  style:
                      primaryTextStyle.copyWith(fontSize: 18, fontWeight: bold),
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
                  'Pertanyaan seputar kesehatan reproduksi dan pola makan subyek ',
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
                          return ResultKnowledge(
                              historyKnowledgeModel: historyKnowledgeModel);
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
            'Riwayat Data Pengetahuan',
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
          itemCount: listKnowledgeModel.length,
          itemBuilder: (context, index) {
            return knowledgeSubject(
              historyKnowledgeModel: listKnowledgeModel[index],
            );
          },
        ),
      ),
    );
  }
}
