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

Future<void> scheduledActivityNotification1() async {
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
      hour: 6,
      minute: 0,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> scheduledActivityNotification2() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '${Emojis.time_twelve_o_clock} Selamat Siang! Tetap Aktifitas Yuu',
      body: 'Isi waktu siang mu dengan aktifitas ringan ya!',
    ),
    schedule: NotificationCalendar(
      hour: 12,
      minute: 0,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> scheduledActivityNotification3() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title: '${Emojis.smile_winking_face} Soree Kawan! Semangat Terus Ya ~',
      body:
          'Badan sudah mulai lelah, baik nya istirahatin sebentar ya badannya :)',
    ),
    schedule: NotificationCalendar(
      hour: 18,
      minute: 0,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> scheduledActivityNotification4() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title:
          '${Emojis.moon_crescent_moon + Emojis.icon_zzz} Malamm! Selamat Beristirahat yaa',
      body: 'Istirahat yang cukup biar semangat terus kebesokkan harinya!',
    ),
    schedule: NotificationCalendar(
      hour: 22,
      minute: 0,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> scheduledActivityNotification() async {
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
      hour: 22,
      minute: 1,
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
          '${Emojis.body_flexed_biceps} Data Aktifitas Kamu Sudah Kami Rekam!',
      body:
          'Terima kasih sudah mengisi data aktifitas harian kamu. Tetap semangat menjalani aktifitas besok yaa',
    ),
  );
}

Future<void> createAntrhopometriNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'basic_channel',
      title:
          '${Emojis.office_clipboard} Data Antrhopometri Berhasil Tersimpan!',
      body:
          'Data tinggi badan, berat badan, dan lingkar lengan atas sudah berhasil tersimpan ke dalam database kami.',
    ),
  );
}

Future<void> createHemoglobinNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: createUniqueId(),
        channelKey: 'basic_channel',
        title:
            '${Emojis.medical_drop_of_blood} Halo Bestie! Data Hemoglobin Kamu Berhasil Disimpan Yaa ~',
        body:
            'Kamu bisa liat kumpulan data hemoglobin kamu di Riwayat Data Hemoglobin.'),
  );
}

Future<void> createKnowledgeNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: createUniqueId(),
        channelKey: 'basic_channel',
        title:
            '${Emojis.smile_smiling_face_with_smiling_eyes} Terima Kasih Sudah Menjawab Pertanyaannya!',
        body:
            'Jawaban kamu sudah berhasil kami simpan! Terus tingkatkan pengetahuan mu tentang kesehatan yaa'),
  );
}

Future<void> testNotification() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 99,
      channelKey: 'basic_channel',
      title: '${Emojis.transport_police_car_light} TESTING BERHASIL MUNCUL!',
      body: 'Testing notifikasi ketika waktu sudah diatur.',
    ),
    schedule: NotificationCalendar(
      hour: 5,
      minute: 42,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}

Future<void> cancelScheduledNotifications() async {
  await AwesomeNotifications().cancelAllSchedules();
}

Future<void> cancelScheduledNotificationsTest() async {
  await AwesomeNotifications().cancel(99);
}
