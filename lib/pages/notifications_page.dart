import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthy/models/user_model.dart';
import 'package:healthy/pages/form_information_page.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/pages/notif_activity_page.dart';
import 'package:healthy/pages/notif_food_page.dart';
import 'package:healthy/pages/notif_prokes_page.dart';
import 'package:healthy/pages/notif_reproduction_page.dart';
import 'package:healthy/pages/notif_tablets_page.dart';
import 'package:healthy/pages/result_information_page.dart';
import 'package:healthy/services/information_service.dart';
import 'package:healthy/services/notification_service.dart';
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
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel(uid: '1234');

  @override
  void initState() {
    // ignore: todo
    // TODO: Implement initState
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then(
      (isAllowed) {
        if (!isAllowed) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Allow Notifications'),
              content:
                  const Text('Our app would like to send you notifications'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Don\'t Allow',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                TextButton(
                  onPressed: () => AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then((_) => Navigator.pop(context)),
                  child: const Text(
                    'Allow',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );

    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) async {
      loggedInUser = UserModel.fromMap(value.data());

      setState(() {});
    });
  }

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
                  onTap: () async {
                    if (widget.listNotifModel[index].isRead == false) {
                      final newIndex = widget.listNotifModel.indexWhere(
                        (e) => e.id == widget.listNotifModel[index].id,
                      );
                      await NotificationService().updateIsRead(
                        widget.listNotifModel[newIndex].copyWith(isRead: true),
                      );
                    }

                    if (widget.listNotifModel[index].route == "1") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotifReproduction(),
                        ),
                      );
                    } else if (widget.listNotifModel[index].route == "2") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotifFood(),
                        ),
                      );
                    } else if (widget.listNotifModel[index].route == "3") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotifTablets(),
                        ),
                      );
                    } else if (widget.listNotifModel[index].route == "4") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotifActivity(),
                        ),
                      );
                    } else if (widget.listNotifModel[index].route == "5") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotifProkes(),
                        ),
                      );
                    } else if (widget.listNotifModel[index].route == "6") {
                      final result = await InformationService()
                          .fetchInformation(uid: loggedInUser.uid);

                      if (result != null) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResultInformation(informModel: result),
                          ),
                        );
                      } else if (widget.listNotifModel[index].route == "7") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FormInformation(),
                          ),
                        );
                      } else {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                          ModalRoute.withName('/'),
                        );

                        Fluttertoast.showToast(
                          msg: 'Data Informasi Anda Kosong',
                        );
                      }
                    } else {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                        ModalRoute.withName('/'),
                      );
                    }
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
