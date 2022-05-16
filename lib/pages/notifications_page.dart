import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

import '../models/notification_model.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: fourthColor,
        automaticallyImplyLeading: false,
        elevation: 5,
        title: Text(
          'Notifikasi',
          style: primaryTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
        ),
        leading: IconButton(
          onPressed: () =>
              Navigator.of(context).pop(mockHistoryNotificationModel),
          icon: const Icon(Icons.chevron_left),
          color: primaryColor,
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
                      if (mockHistoryNotificationModel[index].isRead == false) {
                        final newIndex =
                            mockHistoryNotificationModel.indexWhere(
                          (e) => e.id == mockHistoryNotificationModel[index].id,
                        );

                        setState(() {
                          mockHistoryNotificationModel[newIndex] =
                              mockHistoryNotificationModel[newIndex]
                                  .copyWith(isRead: true);
                        });
                      }

                      Navigator.pushNamed(context, '/notif-repro');
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
