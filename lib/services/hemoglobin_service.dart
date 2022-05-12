import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
import 'package:healthy/helpers/const.dart';
import 'package:healthy/models/hemoglobin_model.dart';

class HemoglobinService {
  Future<void> createHb(HistoryHBModel hbModel) async {
    try {
      final instance = instanceFirestore.collection(hbCollection);

      await instance.add(hbModel.toMap());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<HistoryHBModel>?> fetchHb({
    required String uid,
  }) async {
    try {
      QuerySnapshot result =
          await instanceFirestore.collection(hbCollection).get();

      List<HistoryHBModel> hbModel = result.docs
          .map((e) => HistoryHBModel.fromMap(e.data() as Map<String, dynamic>))
          .toList();

      final filterHbModel =
          hbModel.where((element) => element.user.uid == uid).toList();

      return filterHbModel;
    } catch (e) {
      // throw Exception(e);
      return null;
    }
  }
}
