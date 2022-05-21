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

Future<void> createActivityNotification1() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title:
          '${Emojis.sky_sun_behind_small_cloud} Selamat Pagi! Beraktifitas Yuk Bestie',
      body:
          'Abis bangun tidur jangan tidur lagi yaa. Isi pagi mu dengan kegiatan produktif!',
    ),
    schedule: NotificationCalendar(
      // weekday: notificationSchedule.dayOfTheWeek,
      hour: 6,
      minute: 0,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> createActivityNotification2() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '${Emojis.time_twelve_o_clock} Selamat Siang! Tetap Aktifitas Yuu',
      body: 'Isi waktu siang mu dengan aktifitas ringan ya!',
    ),
    schedule: NotificationCalendar(
      // weekday: notificationSchedule.dayOfTheWeek,
      hour: 12,
      minute: 0,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> createActivityNotification3() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '${Emojis.smile_winking_face} Soree Kawan! Semangat Terus Ya ~',
      body:
          'Badan sudah mulai lelah, baik nya istirahatin sebentar ya badannya :)',
    ),
    schedule: NotificationCalendar(
      // weekday: notificationSchedule.dayOfTheWeek,
      hour: 18,
      minute: 0,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> createActivityNotification4() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title:
          '${Emojis.moon_crescent_moon + Emojis.icon_zzz} Malamm! Selamat Beristirahat yaa',
      body: 'Istirahat yang cukup biar semangat terus kebesokkan harinya!',
    ),
    schedule: NotificationCalendar(
      // weekday: notificationSchedule.dayOfTheWeek,
      hour: 22,
      minute: 0,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> createActivityNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title:
          '${Emojis.transport_police_car_light} Jangan Lupa Isi Form Aktifitas Yaa!',
      body:
          'Jangan lupa Isi form aktifitas harian mu di menu \'Data Aktifitas Fisik Subyek\', oke?',
    ),
    schedule: NotificationCalendar(
      // weekday: notificationSchedule.dayOfTheWeek,
      hour: 22,
      minute: 1,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> testNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '${Emojis.transport_police_car_light} TESTING BERHASIL MUNCUL!',
      body: 'Testing notifikasi ketika waktu sudah diatur.',
    ),
    schedule: NotificationCalendar(
      // weekday: notificationSchedule.dayOfTheWeek,
      hour: 13,
      minute: 40,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> cancelScheduledNotifications() async {
  await AwesomeNotifications().cancelAllSchedules();
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

Future<void> createReminderDataInformasiNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'scheduled_channel',
      title: '${Emojis.wheater_droplet} Pengingat Notifikasi Berhasil!',
      body: 'Pengingat notifikasi berhasil dibuat.',
      locked: false,
    ),
  );
}
