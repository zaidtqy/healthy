import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:healthy/helpers/const.dart';
import 'package:healthy/models/knowledge_model.dart';

class KnowledgeService {
  Future<void> createKnowledge(HistoryKnowledgeModel knowledgeModel) async {
    try {
      final instance = instanceFirestore.collection(knowledgeCollection);

      await instance.add(knowledgeModel.toMap());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<HistoryKnowledgeModel>?> fetchKnowledge({
    required String uid,
  }) async {
    try {
      QuerySnapshot result =
          await instanceFirestore.collection(knowledgeCollection).get();

      List<HistoryKnowledgeModel> knowledgeModel = result.docs
          .map((e) =>
              HistoryKnowledgeModel.fromMap(e.data() as Map<String, dynamic>))
          .toList();

      final filterKnowledgeModel =
          knowledgeModel.where((element) => element.user.uid == uid).toList();

      filterKnowledgeModel.sort(((a, b) => b.id.compareTo(a.id)));

      return filterKnowledgeModel;
    } catch (e) {
      return null;
    }
  }
}
