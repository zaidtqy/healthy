class HistoryInformModel {
  final String date;
  final String name;
  final String address;
  final String eduFather;
  final String eduMother;
  final String jobFather;
  final String jobMother;
  final String brothers;
  final String amount;
  final String income;
  final String outcome;
  final String ageTeen;
  final String disease;

  HistoryInformModel({
    required this.date,
    required this.name,
    required this.address,
    required this.eduFather,
    required this.eduMother,
    required this.jobFather,
    required this.jobMother,
    required this.brothers,
    required this.amount,
    required this.income,
    required this.outcome,
    required this.ageTeen,
    required this.disease,
  });

  HistoryInformModel copyWith({
    String? date,
    String? name,
    String? address,
    String? eduFather,
    String? eduMother,
    String? jobFather,
    String? jobMother,
    String? brothers,
    String? amount,
    String? income,
    String? outcome,
    String? ageTeen,
    String? disease,
  }) {
    return HistoryInformModel(
      date: date ?? this.date,
      name: name ?? this.name,
      address: address ?? this.address,
      eduFather: eduFather ?? this.eduFather,
      eduMother: eduMother ?? this.eduMother,
      jobFather: jobFather ?? this.jobFather,
      jobMother: jobMother ?? this.jobMother,
      brothers: brothers ?? this.brothers,
      amount: amount ?? this.amount,
      income: income ?? this.income,
      outcome: outcome ?? this.outcome,
      ageTeen: ageTeen ?? this.ageTeen,
      disease: disease ?? this.disease,
    );
  }
}

final List<HistoryInformModel> mockHistoryInformModel = [
  HistoryInformModel(
      date: "30/03/2022",
      name: "Muhammad Zaid Taqy",
      address:
          "Perum Kodim Blok D No 10 RT.005/002, Kel. Bekasi Jaya, Kec. Bekasi Timur, Kota Bekasi, 17112",
      eduFather: "Sarjana, Master, Doktor",
      eduMother: "Sarjana, Master, Doktor",
      jobFather: "Pegawai Swasta",
      jobMother: "Tidak Bekerja",
      brothers: "3",
      amount: "3",
      income: "> Rp 10,000,000",
      outcome: "Rp 5,000,000 - Rp 10,000,000",
      ageTeen: "0",
      disease: "Tidak Ada")
];
