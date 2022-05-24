import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:healthy/helpers/const.dart';
import 'package:healthy/models/notification_model.dart';

class NotificationService {
  Future<void> createNotification(HistoryNotificationModel notifModel) async {
    try {
      final instance = instanceFirestore.collection(notificationCollection);

      await instance.add(notifModel.toMap());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<HistoryNotificationModel>?> fetchNotification({
    required String uid,
  }) async {
    try {
      QuerySnapshot result =
          await instanceFirestore.collection(notificationCollection).get();

      List<HistoryNotificationModel> notifModel = result.docs
          .map((e) => HistoryNotificationModel.fromMap(
              e.data() as Map<String, dynamic>))
          .toList();

      final filterNotificationModel =
          notifModel.where((element) => element.user.uid == uid).toList();

      filterNotificationModel.sort(((a, b) => b.id.compareTo(a.id)));

      return filterNotificationModel;
    } catch (e) {
      return null;
    }
  }

  Future<void> updateIsRead(HistoryNotificationModel notificationModel) async {
    var snapshot = await instanceFirestore
        .collection(notificationCollection)
        .where('id', isEqualTo: notificationModel.id)
        .get();
    await snapshot.docs.first.reference.update(notificationModel.toMap());
  }
}
