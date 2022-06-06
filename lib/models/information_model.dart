// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:healthy/models/user_model.dart';

class HistoryInformModel {
  final UserModel user;
  final String id;
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
    required this.user,
    required this.id,
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
    UserModel? user,
    String? id,
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
      user: user ?? this.user,
      id: id ?? this.id,
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'id': id,
      'date': date,
      'name': name,
      'address': address,
      'eduFather': eduFather,
      'eduMother': eduMother,
      'jobFather': jobFather,
      'jobMother': jobMother,
      'brothers': brothers,
      'amount': amount,
      'income': income,
      'outcome': outcome,
      'ageTeen': ageTeen,
      'disease': disease,
    };
  }

  factory HistoryInformModel.fromMap(Map<String, dynamic> map) {
    return HistoryInformModel(
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
      id: map['id'] as String,
      date: map['date'] as String,
      name: map['name'] as String,
      address: map['address'] as String,
      eduFather: map['eduFather'] as String,
      eduMother: map['eduMother'] as String,
      jobFather: map['jobFather'] as String,
      jobMother: map['jobMother'] as String,
      brothers: map['brothers'] as String,
      amount: map['amount'] as String,
      income: map['income'] as String,
      outcome: map['outcome'] as String,
      ageTeen: map['ageTeen'] as String,
      disease: map['disease'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryInformModel.fromJson(String source) =>
      HistoryInformModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HistoryInformModel(user: $user, id: $id, date: $date, name: $name, address: $address, eduFather: $eduFather, eduMother: $eduMother, jobFather: $jobFather, jobMother: $jobMother, brothers: $brothers, amount: $amount, income: $income, outcome: $outcome, ageTeen: $ageTeen, disease: $disease)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryInformModel &&
        other.user == user &&
        other.id == id &&
        other.date == date &&
        other.name == name &&
        other.address == address &&
        other.eduFather == eduFather &&
        other.eduMother == eduMother &&
        other.jobFather == jobFather &&
        other.jobMother == jobMother &&
        other.brothers == brothers &&
        other.amount == amount &&
        other.income == income &&
        other.outcome == outcome &&
        other.ageTeen == ageTeen &&
        other.disease == disease;
  }

  @override
  int get hashCode {
    return user.hashCode ^
        id.hashCode ^
        date.hashCode ^
        name.hashCode ^
        address.hashCode ^
        eduFather.hashCode ^
        eduMother.hashCode ^
        jobFather.hashCode ^
        jobMother.hashCode ^
        brothers.hashCode ^
        amount.hashCode ^
        income.hashCode ^
        outcome.hashCode ^
        ageTeen.hashCode ^
        disease.hashCode;
  }
}
