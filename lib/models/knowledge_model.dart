// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:healthy/models/user_model.dart';

class HistoryKnowledgeModel {
  final UserModel user;
  final String id;
  final String date;
  final List<KnowledgeModel> knowledgeModel;

  HistoryKnowledgeModel({
    required this.user,
    required this.id,
    required this.date,
    required this.knowledgeModel,
  });

  HistoryKnowledgeModel copyWith({
    UserModel? user,
    String? id,
    String? date,
    List<KnowledgeModel>? knowledgeModel,
  }) {
    return HistoryKnowledgeModel(
      user: user ?? this.user,
      id: id ?? this.id,
      date: date ?? this.date,
      knowledgeModel: knowledgeModel ?? this.knowledgeModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'id': id,
      'date': date,
      'knowledgeModel': knowledgeModel.map((x) => x.toMap()).toList(),
    };
  }

  factory HistoryKnowledgeModel.fromMap(Map<String, dynamic> map) {
    return HistoryKnowledgeModel(
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
      id: map['id'] as String,
      date: map['date'] as String,
      knowledgeModel: List<KnowledgeModel>.from(
        (map['knowledgeModel']).map<KnowledgeModel>(
          (x) => KnowledgeModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryKnowledgeModel.fromJson(String source) =>
      HistoryKnowledgeModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HistoryKnowledgeModel(user: $user, id: $id, date: $date, knowledgeModel: $knowledgeModel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryKnowledgeModel &&
        other.user == user &&
        other.id == id &&
        other.date == date &&
        listEquals(other.knowledgeModel, knowledgeModel);
  }

  @override
  int get hashCode {
    return user.hashCode ^
        id.hashCode ^
        date.hashCode ^
        knowledgeModel.hashCode;
  }
}

class KnowledgeModel {
  final String no1;
  final String no2;
  final String no3;
  final String no4;
  final String no5;
  final String no6;
  final String no7;
  final String no8;
  final String no9;
  final String no10;
  final String no11;
  final String no12a;
  final String no12b;
  final String no12c;
  final String no12d;
  final String no13a;
  final String no13b;
  final String no13c;
  final String no13d;
  final String no14;
  final String no15;
  final String no16;
  final String no17;
  final String no18;
  final String no19;
  final String no20;
  final String no21;
  final String no22;
  final String no23;
  final String no24;
  final String no25;
  final String no26;
  final String no27;
  final String no28;
  final String no29;
  final String no30;

  KnowledgeModel({
    required this.no1,
    required this.no2,
    required this.no3,
    required this.no4,
    required this.no5,
    required this.no6,
    required this.no7,
    required this.no8,
    required this.no9,
    required this.no10,
    required this.no11,
    required this.no12a,
    required this.no12b,
    required this.no12c,
    required this.no12d,
    required this.no13a,
    required this.no13b,
    required this.no13c,
    required this.no13d,
    required this.no14,
    required this.no15,
    required this.no16,
    required this.no17,
    required this.no18,
    required this.no19,
    required this.no20,
    required this.no21,
    required this.no22,
    required this.no23,
    required this.no24,
    required this.no25,
    required this.no26,
    required this.no27,
    required this.no28,
    required this.no29,
    required this.no30,
  });

  KnowledgeModel copyWith({
    String? no1,
    String? no2,
    String? no3,
    String? no4,
    String? no5,
    String? no6,
    String? no7,
    String? no8,
    String? no9,
    String? no10,
    String? no11,
    String? no12a,
    String? no12b,
    String? no12c,
    String? no12d,
    String? no13a,
    String? no13b,
    String? no13c,
    String? no13d,
    String? no14,
    String? no15,
    String? no16,
    String? no17,
    String? no18,
    String? no19,
    String? no20,
    String? no21,
    String? no22,
    String? no23,
    String? no24,
    String? no25,
    String? no26,
    String? no27,
    String? no28,
    String? no29,
    String? no30,
  }) {
    return KnowledgeModel(
      no1: no1 ?? this.no1,
      no2: no2 ?? this.no2,
      no3: no3 ?? this.no3,
      no4: no4 ?? this.no4,
      no5: no5 ?? this.no5,
      no6: no6 ?? this.no6,
      no7: no7 ?? this.no7,
      no8: no8 ?? this.no8,
      no9: no9 ?? this.no9,
      no10: no10 ?? this.no10,
      no11: no11 ?? this.no11,
      no12a: no12a ?? this.no12a,
      no12b: no12b ?? this.no12b,
      no12c: no12c ?? this.no12c,
      no12d: no12d ?? this.no12d,
      no13a: no13a ?? this.no13a,
      no13b: no13b ?? this.no13b,
      no13c: no13c ?? this.no13c,
      no13d: no13d ?? this.no13d,
      no14: no14 ?? this.no14,
      no15: no15 ?? this.no15,
      no16: no16 ?? this.no16,
      no17: no17 ?? this.no17,
      no18: no18 ?? this.no18,
      no19: no19 ?? this.no19,
      no20: no20 ?? this.no20,
      no21: no21 ?? this.no21,
      no22: no22 ?? this.no22,
      no23: no23 ?? this.no23,
      no24: no24 ?? this.no24,
      no25: no25 ?? this.no25,
      no26: no26 ?? this.no26,
      no27: no27 ?? this.no27,
      no28: no28 ?? this.no28,
      no29: no29 ?? this.no29,
      no30: no30 ?? this.no30,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'no1': no1,
      'no2': no2,
      'no3': no3,
      'no4': no4,
      'no5': no5,
      'no6': no6,
      'no7': no7,
      'no8': no8,
      'no9': no9,
      'no10': no10,
      'no11': no11,
      'no12a': no12a,
      'no12b': no12b,
      'no12c': no12c,
      'no12d': no12d,
      'no13a': no13a,
      'no13b': no13b,
      'no13c': no13c,
      'no13d': no13d,
      'no14': no14,
      'no15': no15,
      'no16': no16,
      'no17': no17,
      'no18': no18,
      'no19': no19,
      'no20': no20,
      'no21': no21,
      'no22': no22,
      'no23': no23,
      'no24': no24,
      'no25': no25,
      'no26': no26,
      'no27': no27,
      'no28': no28,
      'no29': no29,
      'no30': no30,
    };
  }

  factory KnowledgeModel.fromMap(Map<String, dynamic> map) {
    return KnowledgeModel(
      no1: map['no1'] as String,
      no2: map['no2'] as String,
      no3: map['no3'] as String,
      no4: map['no4'] as String,
      no5: map['no5'] as String,
      no6: map['no6'] as String,
      no7: map['no7'] as String,
      no8: map['no8'] as String,
      no9: map['no9'] as String,
      no10: map['no10'] as String,
      no11: map['no11'] as String,
      no12a: map['no12a'] as String,
      no12b: map['no12b'] as String,
      no12c: map['no12c'] as String,
      no12d: map['no12d'] as String,
      no13a: map['no13a'] as String,
      no13b: map['no13b'] as String,
      no13c: map['no13c'] as String,
      no13d: map['no13d'] as String,
      no14: map['no14'] as String,
      no15: map['no15'] as String,
      no16: map['no16'] as String,
      no17: map['no17'] as String,
      no18: map['no18'] as String,
      no19: map['no19'] as String,
      no20: map['no20'] as String,
      no21: map['no21'] as String,
      no22: map['no22'] as String,
      no23: map['no23'] as String,
      no24: map['no24'] as String,
      no25: map['no25'] as String,
      no26: map['no26'] as String,
      no27: map['no27'] as String,
      no28: map['no28'] as String,
      no29: map['no29'] as String,
      no30: map['no30'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory KnowledgeModel.fromJson(String source) =>
      KnowledgeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'KnowledgeModel(no1: $no1, no2: $no2, no3: $no3, no4: $no4, no5: $no5, no6: $no6, no7: $no7, no8: $no8, no9: $no9, no10: $no10, no11: $no11, no12a: $no12a, no12b: $no12b, no12c: $no12c, no12d: $no12d, no13a: $no13a, no13b: $no13b, no13c: $no13c, no13d: $no13d, no14: $no14, no15: $no15, no16: $no16, no17: $no17, no18: $no18, no19: $no19, no20: $no20, no21: $no21, no22: $no22, no23: $no23, no24: $no24, no25: $no25, no26: $no26, no27: $no27, no28: $no28, no29: $no29, no30: $no30)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is KnowledgeModel &&
        other.no1 == no1 &&
        other.no2 == no2 &&
        other.no3 == no3 &&
        other.no4 == no4 &&
        other.no5 == no5 &&
        other.no6 == no6 &&
        other.no7 == no7 &&
        other.no8 == no8 &&
        other.no9 == no9 &&
        other.no10 == no10 &&
        other.no11 == no11 &&
        other.no12a == no12a &&
        other.no12b == no12b &&
        other.no12c == no12c &&
        other.no12d == no12d &&
        other.no13a == no13a &&
        other.no13b == no13b &&
        other.no13c == no13c &&
        other.no13d == no13d &&
        other.no14 == no14 &&
        other.no15 == no15 &&
        other.no16 == no16 &&
        other.no17 == no17 &&
        other.no18 == no18 &&
        other.no19 == no19 &&
        other.no20 == no20 &&
        other.no21 == no21 &&
        other.no22 == no22 &&
        other.no23 == no23 &&
        other.no24 == no24 &&
        other.no25 == no25 &&
        other.no26 == no26 &&
        other.no27 == no27 &&
        other.no28 == no28 &&
        other.no29 == no29 &&
        other.no30 == no30;
  }

  @override
  int get hashCode {
    return no1.hashCode ^
        no2.hashCode ^
        no3.hashCode ^
        no4.hashCode ^
        no5.hashCode ^
        no6.hashCode ^
        no7.hashCode ^
        no8.hashCode ^
        no9.hashCode ^
        no10.hashCode ^
        no11.hashCode ^
        no12a.hashCode ^
        no12b.hashCode ^
        no12c.hashCode ^
        no12d.hashCode ^
        no13a.hashCode ^
        no13b.hashCode ^
        no13c.hashCode ^
        no13d.hashCode ^
        no14.hashCode ^
        no15.hashCode ^
        no16.hashCode ^
        no17.hashCode ^
        no18.hashCode ^
        no19.hashCode ^
        no20.hashCode ^
        no21.hashCode ^
        no22.hashCode ^
        no23.hashCode ^
        no24.hashCode ^
        no25.hashCode ^
        no26.hashCode ^
        no27.hashCode ^
        no28.hashCode ^
        no29.hashCode ^
        no30.hashCode;
  }
}

final List<HistoryKnowledgeModel> mockHistoryKnowledgeModel = [
  HistoryKnowledgeModel(
    user: UserModel(uid: '1234'),
    id: "12121",
    date: "26/03/2022",
    knowledgeModel: [
      KnowledgeModel(
          no1: "Ya",
          no2: "Tidak",
          no3: "Ya",
          no4: "Tidak",
          no5: "Ya",
          no6: "Tidak",
          no7: "Ya",
          no8: "Tidak",
          no9: "Ya",
          no10: "Tidak",
          no11: "Ya",
          no12a: "Tidak",
          no12b: "Ya",
          no12c: "Tidak",
          no12d: "Ya",
          no13a: "Tidak",
          no13b: "Ya",
          no13c: "Tidak",
          no13d: "Ya",
          no14: "Tidak",
          no15: "Ya",
          no16: "Tidak",
          no17: "Ya",
          no18: "Tidak",
          no19: "Ya",
          no20: "Tidak",
          no21: "Ya",
          no22: "Tidak",
          no23: "Ya",
          no24: "Tidak",
          no25: "Ya",
          no26: "Tidak",
          no27: "Ya",
          no28: "Tidak",
          no29: "Ya",
          no30: "Tidak"),
    ],
  ),
  HistoryKnowledgeModel(
    user: UserModel(uid: '1234'),
    id: "21312312",
    date: "27/03/2022",
    knowledgeModel: [
      KnowledgeModel(
          no1: "Ya",
          no2: "Ya",
          no3: "Ya",
          no4: "Ya",
          no5: "Ya",
          no6: "Ya",
          no7: "Ya",
          no8: "Ya",
          no9: "Ya",
          no10: "Ya",
          no11: "Tidak",
          no12a: "Tidak",
          no12b: "Tidak",
          no12c: "Tidak",
          no12d: "Tidak",
          no13a: "Tidak",
          no13b: "Tidak",
          no13c: "Tidak",
          no13d: "Tidak",
          no14: "Tidak",
          no15: "Tidak",
          no16: "Tidak",
          no17: "Tidak",
          no18: "Tidak",
          no19: "Tidak",
          no20: "Tidak",
          no21: "Tidak",
          no22: "Tidak",
          no23: "Tidak",
          no24: "Tidak",
          no25: "Tidak",
          no26: "Tidak",
          no27: "Tidak",
          no28: "Tidak",
          no29: "Tidak",
          no30: "Tidak"),
    ],
  )
];
