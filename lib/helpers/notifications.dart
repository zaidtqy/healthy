import 'package:awesome_notifications/awesome_notifications.dart';

import '../utils/utilities.dart';

Future<void> createDataInformationNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title:
          '${Emojis.activites_balloon + Emojis.activites_fireworks} Data Informasi Subyek Berhasil Disimpan!',
      body: 'Data anda sudah berhasil masuk ke dalam database kami.',
    ),
  );
}
