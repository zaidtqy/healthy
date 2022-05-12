class HistoryHBModel {
  final String date;
  final List<HbModel> hbModel;

  HistoryHBModel({required this.date, required this.hbModel});
}

class HbModel {
  final String hemoglobin;

  HbModel({required this.hemoglobin});
}

final List<HistoryHBModel> mockHistoryHbModel = [
  HistoryHBModel(
    date: "27/03/2022",
    hbModel: [
      HbModel(
        hemoglobin: "22",
      ),
    ],
  ),
  HistoryHBModel(
    date: "28/03/2022",
    hbModel: [
      HbModel(
        hemoglobin: "25",
      ),
    ],
  ),
];
