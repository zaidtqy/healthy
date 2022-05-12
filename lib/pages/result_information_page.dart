// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:healthy/models/information_model.dart';
// import 'package:healthy/models/user_model.dart';
// import 'package:healthy/services/information_service.dart';
import 'package:healthy/theme.dart';

class ResultInformation extends StatefulWidget {
  final HistoryInformModel informModel;
  const ResultInformation({
    Key? key,
    required this.informModel,
  }) : super(key: key);

  @override
  State<ResultInformation> createState() => _ResultInformationState();
}

class _ResultInformationState extends State<ResultInformation> {
  @override
  Widget build(BuildContext context) {
    Widget resultInformation() {
      return ListView(
        padding: const EdgeInsets.only(top: 30),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tanggal Input Data',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1.0,
                    color: primaryColor,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/union.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      widget.informModel.date,
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.name,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alamat Lengkap',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 135,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.informModel.address,
                              style: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pendidikan Terakhir Ayah',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.eduFather,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pendidikan Terakhir Ibu',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.eduMother,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pekerjaan Ayah',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.jobFather,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pekerjaan Ibu',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.jobMother,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jumlah Saudara',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: semibold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 45,
                      width: 175,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1.0,
                          color: primaryColor,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/union.png',
                              width: 20,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              widget.informModel.brothers,
                              style: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Anak Ke -',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: semibold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 45,
                      width: 175,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1.0,
                          color: primaryColor,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/union.png',
                              width: 20,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              widget.informModel.amount,
                              style: primaryTextStyle.copyWith(
                                fontSize: 15,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jumlah Pendapatan Total Keluarga',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.income,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jumlah Pengeluaran Total Keluarga',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.outcome,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Usia Pertama Haid',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.ageTeen,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Riwayat Penyakit',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/union.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.informModel.disease,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home-page');
              },
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              child: Text(
                'Kembali',
                style: backgroundTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
        ],
      );
    }

    // Widget backButton() {
    //   return Container(
    //     height: 45,
    //     width: 130,
    //     margin: const EdgeInsets.only(top: 30, bottom: 30),
    //     child: TextButton(
    //       onPressed: () {
    //         Navigator.pushNamed(context, '/home-page');
    //       },
    //       style: TextButton.styleFrom(
    //           backgroundColor: primaryColor,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(15),
    //           )),
    //       child: Text(
    //         'Kembali',
    //         style: backgroundTextStyle.copyWith(
    //           fontSize: 15,
    //           fontWeight: bold,
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
                  'Data Informasi Subyek',
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
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: resultInformation(),
      ),
    );
  }
}
