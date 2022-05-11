// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:healthy/models/user_model.dart';

class HistoryInformModel {
  final UserModel user;
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
    return 'HistoryInformModel(user: $user, date: $date, name: $name, address: $address, eduFather: $eduFather, eduMother: $eduMother, jobFather: $jobFather, jobMother: $jobMother, brothers: $brothers, amount: $amount, income: $income, outcome: $outcome, ageTeen: $ageTeen, disease: $disease)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryInformModel &&
        other.user == user &&
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

// final List<HistoryInformModel> mockHistoryInformModel = [
//   HistoryInformModel(
//       user: UserModel(uid: '', name: '', email: '', phone: ''),
//       date: "30/03/2022",
//       name: "Muhammad Zaid Taqy",
//       address:
//           "Perum Kodim Blok D No 10 RT.005/002, Kel. Bekasi Jaya, Kec. Bekasi Timur, Kota Bekasi, 17112",
//       eduFather: "Sarjana, Master, Doktor",
//       eduMother: "Sarjana, Master, Doktor",
//       jobFather: "Pegawai Swasta",
//       jobMother: "Tidak Bekerja",
//       brothers: "3",
//       amount: "3",
//       income: "> Rp 10,000,000",
//       outcome: "Rp 5,000,000 - Rp 10,000,000",
//       ageTeen: "0",
//       disease: "Tidak Ada")
// ];
