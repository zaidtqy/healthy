import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:healthy/helpers/const.dart';
import 'package:healthy/models/information_model.dart';

class InformationService {
  Future<void> createInformation(HistoryInformModel informModel) async {
    try {
      final instance = instanceFirestore.collection(informationCollection);

      await instance.add(informModel.toMap());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<HistoryInformModel?> fetchInformation({required String uid}) async {
    try {
      QuerySnapshot result =
          await instanceFirestore.collection(informationCollection).get();

      List<HistoryInformModel> informModel = result.docs
          .map((e) =>
              HistoryInformModel.fromMap(e.data() as Map<String, dynamic>))
          .toList();

      final filterInformationModel =
          informModel.firstWhere((element) => element.user.uid == uid);

      return filterInformationModel;
    } catch (e) {
      return null;
    }
  }

  Future<void> deleteInformation() async {
    var collection = FirebaseFirestore.instance.collection('information');
    var snapshot = await collection.where('id', isEqualTo: '1').get();
    await snapshot.docs.first.reference.delete();
  }
}
