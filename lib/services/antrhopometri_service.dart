import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
import 'package:healthy/helpers/const.dart';
import 'package:healthy/models/antrhopometri_model.dart';

class AntrhopoService {
  Future<void> createAntrhopo(HistoryAntrhopoModel antrhopoModel) async {
    try {
      final instance = instanceFirestore.collection(antrhopoCollection);

      await instance.add(antrhopoModel.toMap());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<HistoryAntrhopoModel>?> fetchAntrhopo({
    required String uid,
  }) async {
    try {
      QuerySnapshot result =
          await instanceFirestore.collection(antrhopoCollection).get();

      List<HistoryAntrhopoModel> antrhopoModel = result.docs
          .map((e) =>
              HistoryAntrhopoModel.fromMap(e.data() as Map<String, dynamic>))
          .toList();

      final filterAntrhopoModel =
          antrhopoModel.where((element) => element.user.uid == uid).toList();

      return filterAntrhopoModel;
    } catch (e) {
      // throw Exception(e);
      return null;
    }
  }
}
