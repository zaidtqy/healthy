// ignore_for_file: public_member_api_docs, sort_constructors_first
class HistoryReproModel {
  final String logo;
  final String type;
  final String date;
  final String title;
  final String content;
  final String route;
  final bool isRead;

  HistoryReproModel({
    required this.logo,
    required this.type,
    required this.date,
    required this.title,
    required this.content,
    required this.route,
    required this.isRead,
  });

  HistoryReproModel copyWith({
    String? logo,
    String? type,
    String? date,
    String? title,
    String? content,
    String? route,
    bool? isRead,
  }) {
    return HistoryReproModel(
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

final List<HistoryReproModel> mockHistoryReproModel = [
  HistoryReproModel(
    logo: "assets/clock.png",
    type: "Kesehatan Reproduksi",
    date: "25/03/2022",
    title: "Cari Tau Tentang Kesehatan Reproduksi, Yuk!",
    content:
        "Udah tau belum tentang kesehatan reproduksi? kalo belum, Yuk cari tau disini!",
    route: "",
    isRead: true,
  ),
  HistoryReproModel(
    logo: "assets/clock.png",
    type: "Kesehatan Reproduksi",
    date: "25/03/2022",
    title: "Cari Tau Tentang Kesehatan Reproduksi, Yuk!",
    content:
        "Udah tau belum tentang kesehatan reproduksi? kalo belum, Yuk cari tau disini!",
    route: "",
    isRead: true,
  )
];
