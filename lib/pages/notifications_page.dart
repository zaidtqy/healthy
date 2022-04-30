import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

import '../models/notification_model.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  HistoryNotificationModel? historyNotificationModel = HistoryNotificationModel(
    logo: 'logo',
    type: 'type',
    date: 'date',
    title: 'title',
    content: 'content',
    route: 'route',
    isRead: false,
  );
  @override
  Widget build(BuildContext context) {
    // Widget notification({required HistoryNotificationModel listModel}) {
    //   bool isRead = false;

    //   return GestureDetector(
    //     onTap: () {
    //       setState(() {
    //         // listModel.isRead = true;
    //       });
    //       Navigator.pushNamed(context, '/notif-repro');
    //     },
    //     child: Container(
    //       decoration: BoxDecoration(
    //         color: (listModel.isRead)
    //             ? backgroundColor
    //             : primaryColor.withOpacity(0.2),
    //         border: Border(
    //           bottom: BorderSide(width: 0.5, color: primaryColor),
    //         ),
    //       ),
    //       child: Container(
    //         margin: EdgeInsets.symmetric(
    //           horizontal: defaultMargin,
    //           vertical: 15,
    //         ),
    //         child: Row(
    //           children: [
    //             Container(
    //               margin: EdgeInsets.only(
    //                 right: defaultMargin,
    //               ),
    //               child: Column(
    //                 children: [
    //                   Image.asset(
    //                     listModel.logo,
    //                     width: 20,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Flexible(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Text(
    //                         listModel.type,
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         width: 152,
    //                       ),
    //                       Text(
    //                         listModel.date,
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     listModel.title,
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 15,
    //                       fontWeight: bold,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     listModel.content,
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 13,
    //                       fontWeight: medium,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
    // }

    // Widget notifFood() {
    //   return GestureDetector(
    //     onTap: () {
    //       Navigator.pushNamed(context, '/notif-food');
    //     },
    //     child: Container(
    //       decoration: BoxDecoration(
    //         color: primaryColor.withOpacity(0.2),
    //         border: Border(
    //           bottom: BorderSide(width: 0.5, color: primaryColor),
    //         ),
    //       ),
    //       child: Container(
    //         margin: EdgeInsets.symmetric(
    //           horizontal: defaultMargin,
    //           vertical: 15,
    //         ),
    //         child: Row(
    //           children: [
    //             Container(
    //               margin: EdgeInsets.only(
    //                 right: defaultMargin,
    //               ),
    //               child: Column(
    //                 children: [
    //                   Image.asset(
    //                     'assets/information.png',
    //                     width: 20,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Flexible(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Text(
    //                         'Pola Makan Sehat Seimbang',
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         width: 126,
    //                       ),
    //                       Text(
    //                         '24/03/2022',
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'Makanan yang Kamu Makan Perlu diatur loh!',
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 15,
    //                       fontWeight: bold,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'Jangan asal makan ya, nanti kamu sakit. Kalo kamu sakit ada yang mau perhatiin kamu ga?',
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 13,
    //                       fontWeight: medium,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
    // }

    // Widget notifTablet() {
    //   return GestureDetector(
    //     onTap: () {
    //       Navigator.pushNamed(context, '/notif-tablets');
    //     },
    //     child: Container(
    //       decoration: BoxDecoration(
    //         border: Border(
    //           bottom: BorderSide(width: 0.5, color: primaryColor),
    //         ),
    //       ),
    //       child: Container(
    //         margin: EdgeInsets.symmetric(
    //           horizontal: defaultMargin,
    //           vertical: 15,
    //         ),
    //         child: Row(
    //           children: [
    //             Container(
    //               margin: EdgeInsets.only(
    //                 right: defaultMargin,
    //               ),
    //               child: Column(
    //                 children: [
    //                   Image.asset(
    //                     'assets/information.png',
    //                     width: 20,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Flexible(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Text(
    //                         'Konsumsi Tablet Tambah Darah',
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         width: 113,
    //                       ),
    //                       Text(
    //                         '23/03/2022',
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'Gais, Yuk Tetap Sehat! BEBAS ANEMIA!',
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 15,
    //                       fontWeight: bold,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'Cocok nih buat kamu yang pengen tau tentang anemia, baca selengkapnya disini!',
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 13,
    //                       fontWeight: medium,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
    // }

    // Widget notifActivity() {
    //   return GestureDetector(
    //     onTap: () {
    //       Navigator.pushNamed(context, '/notif-activity');
    //     },
    //     child: Container(
    //       decoration: BoxDecoration(
    //         border: Border(
    //           bottom: BorderSide(width: 0.5, color: primaryColor),
    //         ),
    //       ),
    //       child: Container(
    //         margin: EdgeInsets.symmetric(
    //           horizontal: defaultMargin,
    //           vertical: 15,
    //         ),
    //         child: Row(
    //           children: [
    //             Container(
    //               margin: EdgeInsets.only(
    //                 right: defaultMargin,
    //               ),
    //               child: Column(
    //                 children: [
    //                   Image.asset(
    //                     'assets/information.png',
    //                     width: 20,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Flexible(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Text(
    //                         'Aktifitas Fisik',
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         width: 195,
    //                       ),
    //                       Text(
    //                         '22/03/2022',
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'Biar sehat, jangan lupa gerak ya!',
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 15,
    //                       fontWeight: bold,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'Tetap jaga tubuhmu agar terus sehat ya, aktifitas kecil juga gamasalah kok.',
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 13,
    //                       fontWeight: medium,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
    // }

    // Widget notifProkes() {
    //   return GestureDetector(
    //     onTap: () {
    //       Navigator.pushNamed(context, '/notif-prokes');
    //     },
    //     child: Container(
    //       decoration: BoxDecoration(
    //         border: Border(
    //           bottom: BorderSide(width: 0.5, color: primaryColor),
    //         ),
    //       ),
    //       child: Container(
    //         margin: EdgeInsets.symmetric(
    //           horizontal: defaultMargin,
    //           vertical: 15,
    //         ),
    //         child: Row(
    //           children: [
    //             Container(
    //               margin: EdgeInsets.only(
    //                 right: defaultMargin,
    //               ),
    //               child: Column(
    //                 children: [
    //                   Image.asset(
    //                     'assets/information.png',
    //                     width: 20,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Flexible(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Text(
    //                         'Protokol Kesehatan',
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         width: 164,
    //                       ),
    //                       Text(
    //                         '22/03/2022',
    //                         style: primaryTextStyle.copyWith(
    //                           fontSize: 10,
    //                           fontWeight: semibold,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'Eittss! Jangan Lengah Ya, Covid-19 masi ada!',
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 15,
    //                       fontWeight: bold,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     height: 5,
    //                   ),
    //                   Text(
    //                     'Udah vaksin bukan berarti bebas dari virus, tetap jaga sesama ya biar semua sehat. ',
    //                     style: primaryTextStyle.copyWith(
    //                       fontSize: 13,
    //                       fontWeight: medium,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: fourthColor,
          automaticallyImplyLeading: false,
          elevation: 5,
          flexibleSpace: SafeArea(
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/back.png',
                    width: 20,
                  ),
                ),
                Text(
                  'Notifikasi',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: (mockHistoryNotificationModel.isNotEmpty)
            ? ListView.builder(
                padding: const EdgeInsets.only(top: 30),
                itemCount: mockHistoryNotificationModel.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        mockHistoryNotificationModel[index]
                            .copyWith(isRead: true);
                      });
                      Navigator.pushNamed(context,
                          '/${mockHistoryNotificationModel[index].route}');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (mockHistoryNotificationModel[index].isRead)
                            ? backgroundColor
                            : primaryColor.withOpacity(0.2),
                        border: Border(
                          bottom: BorderSide(width: 0.5, color: primaryColor),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: defaultMargin,
                          vertical: 15,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                right: defaultMargin,
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    mockHistoryNotificationModel[index].logo,
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        mockHistoryNotificationModel[index]
                                            .type,
                                        style: primaryTextStyle.copyWith(
                                          fontSize: 10,
                                          fontWeight: semibold,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        mockHistoryNotificationModel[index]
                                            .date,
                                        style: primaryTextStyle.copyWith(
                                          fontSize: 10,
                                          fontWeight: semibold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    mockHistoryNotificationModel[index].title,
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    mockHistoryNotificationModel[index].content,
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: medium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            : Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 180,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image_empty.png',
                          width: 250,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Riwayat Notifikasi Kosong',
                      style: primaryTextStyle.copyWith(
                          fontSize: 15, fontWeight: bold),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
