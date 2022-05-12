// ignore_for_file: public_member_api_docs, sort_constructors_first
class HistoryReproModel {
  final String id;
  final String logo;
  final String type;
  final String date;
  final String title;
  final String content;
  final String route;
  final bool isRead;

  HistoryReproModel({
    required this.id,
    required this.logo,
    required this.type,
    required this.date,
    required this.title,
    required this.content,
    required this.route,
    required this.isRead,
  });

  HistoryReproModel copyWith({
    String? id,
    String? logo,
    String? type,
    String? date,
    String? title,
    String? content,
    String? route,
    bool? isRead,
  }) {
    return HistoryReproModel(
      id: id ?? this.id,
      logo: logo ?? this.logo,
      type: type ?? this.type,
      date: date ?? this.date,
      title: title ?? this.title,
      content: content ?? this.content,
      route: route ?? this.route,
      isRead: isRead ?? this.isRead,
    );
  }
}

List<HistoryReproModel> mockHistoryReproModel = [
  HistoryReproModel(
    id: 'ghsyej1239',
    logo: "assets/clock.png",
    type: "Kesehatan",
    date: "25/03/2022",
    title: "Cari Tau Tentang Kesehatan Reproduksi, Yuk!",
    content:
        "Udah tau belum tentang kesehatan reproduksi? kalo belum, Yuk cari tau disini!",
    route: "",
    isRead: false,
  ),
  HistoryReproModel(
    id: 'koensah68930',
    logo: "assets/clock.png",
    type: "Reproduksi",
    date: "25/03/2022",
    title: "Cari Tau Tentang Kesehatan Reproduksi, Yuk!",
    content:
        "Udah tau belum tentang kesehatan reproduksi? kalo belum, Yuk cari tau disini!",
    route: "",
    isRead: false,
  ),
  HistoryReproModel(
    id: 'kjljas80816490',
    logo: "assets/clock.png",
    type: "KeRe",
    date: "25/03/2022",
    title: "Cari Tau Tentang Kesehatan Reproduksi, Yuk!",
    content:
        "Udah tau belum tentang kesehatan reproduksi? kalo belum, Yuk cari tau disini!",
    route: "",
    isRead: false,
  ),
];
