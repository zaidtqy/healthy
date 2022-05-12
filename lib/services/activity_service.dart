import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
import 'package:healthy/helpers/const.dart';
import 'package:healthy/models/activity_model.dart';

class ActivityService {
  Future<void> createActivity(HistoryActivityModel activityModel) async {
    try {
      final instance = instanceFirestore.collection(activityCollection);

      await instance.add(activityModel.toMap());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<HistoryActivityModel>?> fetchActivity({
    required String uid,
  }) async {
    try {
      QuerySnapshot result =
          await instanceFirestore.collection(activityCollection).get();

      List<HistoryActivityModel> activityModel = result.docs
          .map((e) =>
              HistoryActivityModel.fromMap(e.data() as Map<String, dynamic>))
          .toList();

      final filterActivityModel =
          activityModel.where((element) => element.user.uid == uid).toList();

      return filterActivityModel;
    } catch (e) {
      throw Exception(e);
      // return null;
    }
  }
}
