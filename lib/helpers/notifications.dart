import 'package:awesome_notifications/awesome_notifications.dart';

import '../utils/utilities.dart';

Future<void> createInformationNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: createUniqueId(),
        channelKey: 'basic_channel',
        title: 'Data Informasi Anda Berhasil Disimpan!',
        body: 'Data informasi anda berhasil masuk kedalam database kami.'),
  );
}

Future<void> createActivityNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: createUniqueId(),
        channelKey: 'basic_channel',
        title: 'Data Aktifitas Anda Berhasil Disimpan!',
        body: 'Data Aktifitas anda berhasil masuk kedalam database kami.'),
  );
}

Future<void> createAntrhopometriNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: createUniqueId(),
        channelKey: 'basic_channel',
        title: 'Data Antrhopometri Anda Berhasil Disimpan!',
        body: 'Data Antrhopometri anda berhasil masuk kedalam database kami.'),
  );
}

Future<void> createHemoglobinNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: createUniqueId(),
        channelKey: 'basic_channel',
        title: 'Data Hemoglobin Anda Berhasil Disimpan!',
        body: 'Data Hemoglobin anda berhasil masuk kedalam database kami.'),
  );
}

Future<void> createKnowledgeNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: createUniqueId(),
        channelKey: 'basic_channel',
        title: 'Jawaban Anda Berhasil Disimpan!',
        body: 'Jawaban anda berhasil masuk kedalam database kami.'),
  );
}

Future<void> createDataInformationNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: 'Data Asupan Subyek Belum Tersedia!',
      body:
          'Data Asupan Subyek masih dalam pengembangan, mohon tunggu sampai proses pengembangan selesai.',
    ),
  );
}

Future<void> createReminderDataInformasiNotification(
  NotificationWeekAndTime notificationSchedule,
) async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'scheduled_channel',
      title: '${Emojis.wheater_droplet} Pengingat Notifikasi Berhasil!',
      body: 'Pengingat notifikasi berhasil dibuat.',
    ),
    schedule: NotificationCalendar(
      weekday: notificationSchedule.dayOfTheWeek,
      hour: notificationSchedule.timeOfDay.hour,
      minute: notificationSchedule.timeOfDay.minute,
      second: 0,
      millisecond: 0,
    ),
  );
}
