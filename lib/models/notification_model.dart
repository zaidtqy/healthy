// ignore_for_file: public_member_api_docs, sort_constructors_first
class HistoryNotificationModel {
  final String id;
  final String logo;
  final String type;
  final String date;
  final String title;
  final String content;
  final String route;
  final bool isRead;

  HistoryNotificationModel({
    required this.id,
    required this.logo,
    required this.type,
    required this.date,
    required this.title,
    required this.content,
    required this.route,
    required this.isRead,
  });

  HistoryNotificationModel copyWith({
    String? id,
    String? logo,
    String? type,
    String? date,
    String? title,
    String? content,
    String? route,
    bool? isRead,
  }) {
    return HistoryNotificationModel(
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

List<HistoryNotificationModel> mockHistoryNotificationModel = [
  HistoryNotificationModel(
    id: 'ghsyej1239',
    logo: "assets/information.png",
    type: "Kesehatan Reproduksi",
    date: "25/03/2022",
    title: "Cari Tau Tentang Kesehatan Reproduksi, Yuk!",
    content:
        "Udah tau belum tentang kesehatan reproduksi? kalo belum, Yuk cari tau disini!",
    route: "notif-repro",
    isRead: false,
  ),
  HistoryNotificationModel(
    id: 'koensah68930',
    logo: "assets/information.png",
    type: "Pola Makan Sehat Seimbang",
    date: "24/03/2022",
    title: "Makanan yang Kamu Makan Perlu diatur loh!",
    content:
        "Jangan asal makan ya, nanti kamu sakit. Kalo kamu sakit ada yang mau perhatiin kamu ga?",
    route: "notif-food",
    isRead: false,
  ),
  HistoryNotificationModel(
    id: 'asdasdas78',
    logo: "assets/information.png",
    type: "Konsumsi Tablet Tambah Darah",
    date: "23/03/2022",
    title: "Gais, Yuk Tetap Sehat! BEBAS ANEMIA!",
    content:
        "Cocok nih buat kamu yang pengen tau tentang anemia, baca selengkapnya disini!",
    route: "notif-tablets",
    isRead: false,
  ),
  HistoryNotificationModel(
    id: 'asdas1211',
    logo: "assets/information.png",
    type: "Aktifitas Fisik",
    date: "22/03/2022",
    title: "Biar sehat, jangan lupa gerak ya!",
    content:
        "Tetap jaga tubuhmu agar terus sehat ya, aktifitas kecil juga gamasalah kok.",
    route: "notif-activity",
    isRead: false,
  ),
  HistoryNotificationModel(
    id: 'kjhkhka1238',
    logo: "assets/information.png",
    type: "Protokol Kesehatan",
    date: "22/03/2022",
    title: "Eittss! Jangan Lengah Ya, Covid-19 masih ada!",
    content:
        "Udah vaksin bukan berarti bebas dari virus, tetap jaga sesama ya biar semua sehat.",
    route: "notif-prokes",
    isRead: false,
  )
];
