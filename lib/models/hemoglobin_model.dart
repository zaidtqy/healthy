// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:healthy/models/user_model.dart';

class HistoryHBModel {
  final UserModel user;
  final String id;
  final String date;
  final List<HbModel> hbModel;

  HistoryHBModel({
    required this.user,
    required this.id,
    required this.date,
    required this.hbModel,
  });

  HistoryHBModel copyWith({
    UserModel? user,
    String? id,
    String? date,
    List<HbModel>? hbModel,
  }) {
    return HistoryHBModel(
      user: user ?? this.user,
      id: id ?? this.id,
      date: date ?? this.date,
      hbModel: hbModel ?? this.hbModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'id': id,
      'date': date,
      'hbModel': hbModel.map((x) => x.toMap()).toList(),
    };
  }

  factory HistoryHBModel.fromMap(Map<String, dynamic> map) {
    return HistoryHBModel(
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
      id: map['id'] as String,
      date: map['date'] as String,
      hbModel: List<HbModel>.from(
        (map['hbModel']).map<HbModel>(
          (x) => HbModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryHBModel.fromJson(String source) =>
      HistoryHBModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HistoryHBModel(user: $user, id: $id, date: $date, hbModel: $hbModel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryHBModel &&
        other.user == user &&
        other.id == id &&
        other.date == date &&
        listEquals(other.hbModel, hbModel);
  }

  @override
  int get hashCode {
    return user.hashCode ^ id.hashCode ^ date.hashCode ^ hbModel.hashCode;
  }
}

class HbModel {
  final String hemoglobin;

  HbModel({
    required this.hemoglobin,
  });

  HbModel copyWith({
    String? hemoglobin,
  }) {
    return HbModel(
      hemoglobin: hemoglobin ?? this.hemoglobin,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hemoglobin': hemoglobin,
    };
  }

  factory HbModel.fromMap(Map<String, dynamic> map) {
    return HbModel(
      hemoglobin: map['hemoglobin'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HbModel.fromJson(String source) =>
      HbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'HbModel(hemoglobin: $hemoglobin)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HbModel && other.hemoglobin == hemoglobin;
  }

  @override
  int get hashCode => hemoglobin.hashCode;
}

final List<HistoryHBModel> mockHistoryHbModel = [
  HistoryHBModel(
    user: UserModel(uid: '1234'),
    id: "1234",
    date: "27/03/2022",
    hbModel: [
      HbModel(
        hemoglobin: "22",
      ),
    ],
  ),
  HistoryHBModel(
    user: UserModel(uid: '1234'),
    id: "1234",
    date: "28/03/2022",
    hbModel: [
      HbModel(
        hemoglobin: "25",
      ),
    ],
  ),
];
