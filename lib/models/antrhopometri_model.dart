// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:healthy/models/user_model.dart';

class HistoryAntrhopoModel {
  final UserModel user;
  final String id;
  final String date;
  final List<AntrhopoModel> antrhopoModel;

  HistoryAntrhopoModel({
    required this.user,
    required this.id,
    required this.date,
    required this.antrhopoModel,
  });

  HistoryAntrhopoModel copyWith({
    UserModel? user,
    String? id,
    String? date,
    List<AntrhopoModel>? antrhopoModel,
  }) {
    return HistoryAntrhopoModel(
      user: user ?? this.user,
      id: id ?? this.id,
      date: date ?? this.date,
      antrhopoModel: antrhopoModel ?? this.antrhopoModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'id': id,
      'date': date,
      'antrhopoModel': antrhopoModel.map((x) => x.toMap()).toList(),
    };
  }

  factory HistoryAntrhopoModel.fromMap(Map<String, dynamic> map) {
    return HistoryAntrhopoModel(
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
      id: map['id'] as String,
      date: map['date'] as String,
      antrhopoModel: List<AntrhopoModel>.from(
        (map['antrhopoModel']).map<AntrhopoModel>(
          (x) => AntrhopoModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryAntrhopoModel.fromJson(String source) =>
      HistoryAntrhopoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HistoryAntrhopoModel(user: $user, id: $id, date: $date, antrhopoModel: $antrhopoModel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryAntrhopoModel &&
        other.user == user &&
        other.id == id &&
        other.date == date &&
        listEquals(other.antrhopoModel, antrhopoModel);
  }

  @override
  int get hashCode {
    return user.hashCode ^ id.hashCode ^ date.hashCode ^ antrhopoModel.hashCode;
  }
}

class AntrhopoModel {
  final String antrhopoHeight;
  final String antrhopoWeight;
  final String antrhopoSizeRound;

  AntrhopoModel({
    required this.antrhopoHeight,
    required this.antrhopoWeight,
    required this.antrhopoSizeRound,
  });

  AntrhopoModel copyWith({
    String? antrhopoHeight,
    String? antrhopoWeight,
    String? antrhopoSizeRound,
  }) {
    return AntrhopoModel(
      antrhopoHeight: antrhopoHeight ?? this.antrhopoHeight,
      antrhopoWeight: antrhopoWeight ?? this.antrhopoWeight,
      antrhopoSizeRound: antrhopoSizeRound ?? this.antrhopoSizeRound,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antrhopoHeight': antrhopoHeight,
      'antrhopoWeight': antrhopoWeight,
      'antrhopoSizeRound': antrhopoSizeRound,
    };
  }

  factory AntrhopoModel.fromMap(Map<String, dynamic> map) {
    return AntrhopoModel(
      antrhopoHeight: map['antrhopoHeight'] as String,
      antrhopoWeight: map['antrhopoWeight'] as String,
      antrhopoSizeRound: map['antrhopoSizeRound'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AntrhopoModel.fromJson(String source) =>
      AntrhopoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AntrhopoModel(antrhopoHeight: $antrhopoHeight, antrhopoWeight: $antrhopoWeight, antrhopoSizeRound: $antrhopoSizeRound)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AntrhopoModel &&
        other.antrhopoHeight == antrhopoHeight &&
        other.antrhopoWeight == antrhopoWeight &&
        other.antrhopoSizeRound == antrhopoSizeRound;
  }

  @override
  int get hashCode =>
      antrhopoHeight.hashCode ^
      antrhopoWeight.hashCode ^
      antrhopoSizeRound.hashCode;
}

final List<HistoryAntrhopoModel> mockHistoryAntrhopoModel = [
  HistoryAntrhopoModel(
    user: UserModel(uid: '1234'),
    id: "12312",
    date: "28/03/2022",
    antrhopoModel: [
      AntrhopoModel(
        antrhopoHeight: "167",
        antrhopoWeight: "70",
        antrhopoSizeRound: "60",
      ),
    ],
  ),
  HistoryAntrhopoModel(
    user: UserModel(uid: '1234'),
    id: "12312",
    date: "29/03/2022",
    antrhopoModel: [
      AntrhopoModel(
        antrhopoHeight: "168",
        antrhopoWeight: "71",
        antrhopoSizeRound: "61",
      ),
    ],
  ),
  HistoryAntrhopoModel(
    user: UserModel(uid: '1234'),
    id: "12312",
    date: "30/03/2022",
    antrhopoModel: [
      AntrhopoModel(
        antrhopoHeight: "168",
        antrhopoWeight: "72",
        antrhopoSizeRound: "62",
      ),
    ],
  ),
];
