class HistoryAntrhopoModel {
  final String date;
  final List<AntrhopoModel> antrhopoModel;

  HistoryAntrhopoModel({required this.date, required this.antrhopoModel});
}

class AntrhopoModel {
  final String height;
  final String weight;
  final String sizeRound;

  AntrhopoModel(
      {required this.height, required this.weight, required this.sizeRound});
}

final List<HistoryAntrhopoModel> mockHistoryAntrhopoModel = [
  HistoryAntrhopoModel(
    date: "28/03/2022",
    antrhopoModel: [
      AntrhopoModel(
        height: "167",
        weight: "70",
        sizeRound: "60",
      ),
    ],
  ),
  HistoryAntrhopoModel(
    date: "29/03/2022",
    antrhopoModel: [
      AntrhopoModel(
        height: "168",
        weight: "71",
        sizeRound: "61",
      ),
    ],
  ),
  HistoryAntrhopoModel(
    date: "30/03/2022",
    antrhopoModel: [
      AntrhopoModel(
        height: "168",
        weight: "72",
        sizeRound: "62",
      ),
    ],
  ),
];
