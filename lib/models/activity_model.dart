// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:healthy/models/user_model.dart';

class HistoryActivityModel {
  final UserModel user;
  final String id;
  final String date;
  final List<ActivityModel> activityModel;

  HistoryActivityModel({
    required this.user,
    required this.id,
    required this.date,
    required this.activityModel,
  });

  HistoryActivityModel copyWith({
    UserModel? user,
    String? id,
    String? date,
    List<ActivityModel>? activityModel,
  }) {
    return HistoryActivityModel(
      user: user ?? this.user,
      id: id ?? this.id,
      date: date ?? this.date,
      activityModel: activityModel ?? this.activityModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'id': id,
      'date': date,
      'activityModel': activityModel.map((x) => x.toMap()).toList(),
    };
  }

  factory HistoryActivityModel.fromMap(Map<String, dynamic> map) {
    return HistoryActivityModel(
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
      id: map['id'] as String,
      date: map['date'] as String,
      activityModel: List<ActivityModel>.from(
        (map['activityModel']).map<ActivityModel>(
          (x) => ActivityModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryActivityModel.fromJson(String source) =>
      HistoryActivityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HistoryActivityModel(user: $user, id: $id, date: $date, activityModel: $activityModel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryActivityModel &&
        other.user == user &&
        other.id == id &&
        other.date == date &&
        listEquals(other.activityModel, activityModel);
  }

  @override
  int get hashCode {
    return user.hashCode ^ id.hashCode ^ date.hashCode ^ activityModel.hashCode;
  }
}

class ActivityModel {
  final String activityName;
  final String activityTime;
  final String descriptionActivity;

  ActivityModel({
    required this.activityName,
    required this.activityTime,
    required this.descriptionActivity,
  });

  ActivityModel copyWith({
    String? activityName,
    String? activityTime,
    String? descriptionActivity,
  }) {
    return ActivityModel(
      activityName: activityName ?? this.activityName,
      activityTime: activityTime ?? this.activityTime,
      descriptionActivity: descriptionActivity ?? this.descriptionActivity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityName': activityName,
      'activityTime': activityTime,
      'descriptionActivity': descriptionActivity,
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map) {
    return ActivityModel(
      activityName: map['activityName'] as String,
      activityTime: map['activityTime'] as String,
      descriptionActivity: map['descriptionActivity'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityModel.fromJson(String source) =>
      ActivityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ActivityModel(activityName: $activityName, activityTime: $activityTime, descriptionActivity: $descriptionActivity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ActivityModel &&
        other.activityName == activityName &&
        other.activityTime == activityTime &&
        other.descriptionActivity == descriptionActivity;
  }

  @override
  int get hashCode =>
      activityName.hashCode ^
      activityTime.hashCode ^
      descriptionActivity.hashCode;
}
