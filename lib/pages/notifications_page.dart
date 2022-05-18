import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

import '../models/notification_model.dart';

class NotificationsPage extends StatefulWidget {
  final List<HistoryNotificationModel> listNotifModel;

  const NotificationsPage({
    Key? key,
    required this.listNotifModel,
  }) : super(key: key);

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
          onPressed: () => Navigator.of(context).pop(widget.listNotifModel),
          icon: const Icon(Icons.chevron_left),
          color: primaryColor,
        ),
      ),
      body: (widget.listNotifModel.isNotEmpty)
          ? ListView.builder(
              padding: const EdgeInsets.only(top: 30),
              itemCount: widget.listNotifModel.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (widget.listNotifModel[index].isRead == false) {
                      final newIndex = widget.listNotifModel.indexWhere(
                        (e) => e.id == widget.listNotifModel[index].id,
                      );

                      setState(() {
                        widget.listNotifModel[newIndex] = widget
                            .listNotifModel[newIndex]
                            .copyWith(isRead: true);
                      });
                    }

                    Navigator.pushNamed(context, '/notif-repro');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: (widget.listNotifModel[index].isRead)
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
                                  widget.listNotifModel[index].logo,
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
                                      widget.listNotifModel[index].type,
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 10,
                                        fontWeight: semibold,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      widget.listNotifModel[index].date,
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
                                  widget.listNotifModel[index].title,
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.listNotifModel[index].content,
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
    );
  }
}
