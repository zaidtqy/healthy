// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// import 'package:flutter/cupertino.dart';

import 'package:healthy/models/user_model.dart';

class HistoryNotificationModel {
  final UserModel user;
  final String id;
  final String logo;
  final String type;
  final String date;
  final String title;
  final String content;
  final String route;
  final bool isRead;
  // final VoidCallback onPressed;
  // final VoidCallback onDelete;

  HistoryNotificationModel({
    required this.user,
    required this.id,
    required this.logo,
    required this.type,
    required this.date,
    required this.title,
    required this.content,
    required this.route,
    required this.isRead,
    // required this.onPressed,
    // required this.onDelete,
  });

  HistoryNotificationModel copyWith({
    UserModel? user,
    String? id,
    String? logo,
    String? type,
    String? date,
    String? title,
    String? content,
    String? route,
    bool? isRead,
    // VoidCallback? onPressed,
    // VoidCallback? onDelete,
  }) {
    return HistoryNotificationModel(
      user: user ?? this.user,
      id: id ?? this.id,
      logo: logo ?? this.logo,
      type: type ?? this.type,
      date: date ?? this.date,
      title: title ?? this.title,
      content: content ?? this.content,
      route: route ?? this.route,
      isRead: isRead ?? this.isRead,
      // onPressed: onPressed ?? this.onPressed,
      // onDelete: onDelete ?? this.onDelete,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'id': id,
      'logo': logo,
      'type': type,
      'date': date,
      'title': title,
      'content': content,
      'route': route,
      'isRead': isRead,
      // 'onPressed': onPressed.toMap(),
      // 'onDelete': onDelete.toMap(),
    };
  }

  factory HistoryNotificationModel.fromMap(Map<String, dynamic> map) {
    return HistoryNotificationModel(
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
      id: map['id'] as String,
      logo: map['logo'] as String,
      type: map['type'] as String,
      date: map['date'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      route: map['route'] as String,
      isRead: map['isRead'] as bool,
      // onPressed: VoidCallback.fromMap(map['onPressed'] as Map<String,dynamic>),
      // onDelete: VoidCallback.fromMap(map['onDelete'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryNotificationModel.fromJson(String source) =>
      HistoryNotificationModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HistoryNotificationModel(user: $user, id: $id, logo: $logo, type: $type, date: $date, title: $title, content: $content, route: $route, isRead: $isRead)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryNotificationModel &&
        other.user == user &&
        other.id == id &&
        other.logo == logo &&
        other.type == type &&
        other.date == date &&
        other.title == title &&
        other.content == content &&
        other.route == route &&
        other.isRead == isRead;
  }

  @override
  int get hashCode {
    return user.hashCode ^
        id.hashCode ^
        logo.hashCode ^
        type.hashCode ^
        date.hashCode ^
        title.hashCode ^
        content.hashCode ^
        route.hashCode ^
        isRead.hashCode;
  }
}

List<HistoryNotificationModel> mockHistoryNotificationModel = [
  HistoryNotificationModel(
    user: UserModel(uid: '1234'),
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
    user: UserModel(uid: '1231'),
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
    user: UserModel(uid: '43534'),
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
    user: UserModel(uid: '2342'),
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
    user: UserModel(uid: '1231'),
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
