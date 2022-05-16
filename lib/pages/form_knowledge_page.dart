import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthy/models/knowledge_model.dart';
import 'package:healthy/models/user_model.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/services/knowledge_service.dart';
import 'package:healthy/theme.dart';
import 'package:intl/intl.dart';

class FormKnowledge extends StatefulWidget {
  const FormKnowledge({Key? key}) : super(key: key);

  @override
  State<FormKnowledge> createState() => _FormKnowledgeState();
}

class _FormKnowledgeState extends State<FormKnowledge> {
  // form key
  final _formKey = GlobalKey<FormState>();

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel(uid: '1234');

  String? _valNo1;
  final _no1 = ["Ya", "Tidak"];

  String? _valNo2;
  final _no2 = ["Ya", "Tidak"];

  String? _valNo3;
  final _no3 = ["Ya", "Tidak"];

  String? _valNo4;
  final _no4 = ["Ya", "Tidak"];

  String? _valNo5;
  final _no5 = ["Ya", "Tidak"];

  String? _valNo6;
  final _no6 = ["Ya", "Tidak"];

  String? _valNo7;
  final _no7 = ["Ya", "Tidak"];

  String? _valNo8;
  final _no8 = ["Ya", "Tidak"];

  String? _valNo9;
  final _no9 = ["Ya", "Tidak"];

  String? _valNo10;
  final _no10 = ["Ya", "Tidak"];

  String? _valNo11;
  final _no11 = ["Ya", "Tidak"];

  String? _valNo12a;
  final _no12a = ["Ya", "Tidak"];

  String? _valNo12b;
  final _no12b = ["Ya", "Tidak"];

  String? _valNo12c;
  final _no12c = ["Ya", "Tidak"];

  String? _valNo12d;
  final _no12d = ["Ya", "Tidak"];

  String? _valNo13a;
  final _no13a = ["Ya", "Tidak"];

  String? _valNo13b;
  final _no13b = ["Ya", "Tidak"];

  String? _valNo13c;
  final _no13c = ["Ya", "Tidak"];

  String? _valNo13d;
  final _no13d = ["Ya", "Tidak"];

  String? _valNo14;
  final _no14 = ["Ya", "Tidak"];

  String? _valNo15;
  final _no15 = ["Ya", "Tidak"];

  String? _valNo16;
  final _no16 = ["Ya", "Tidak"];

  String? _valNo17;
  final _no17 = ["Ya", "Tidak"];

  String? _valNo18;
  final _no18 = ["Ya", "Tidak"];

  String? _valNo19;
  final _no19 = ["Ya", "Tidak"];

  String? _valNo20;
  final _no20 = ["Ya", "Tidak"];

  String? _valNo21;
  final _no21 = ["Ya", "Tidak"];

  String? _valNo22;
  final _no22 = ["Ya", "Tidak"];

  String? _valNo23;
  final _no23 = ["Ya", "Tidak"];

  String? _valNo24;
  final _no24 = ["Ya", "Tidak"];

  String? _valNo25;
  final _no25 = ["Ya", "Tidak"];

  String? _valNo26;
  final _no26 = ["Ya", "Tidak"];

  String? _valNo27;
  final _no27 = ["Ya", "Tidak"];

  String? _valNo28;
  final _no28 = ["Ya", "Tidak"];

  String? _valNo29;
  final _no29 = ["Ya", "Tidak"];

  String? _valNo30;
  final _no30 = ["Ya", "Tidak"];

  @override
  void initState() {
    // ignore: todo
    // TODO: Implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      // ignore: unnecessary_this
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  Widget nutrient() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Pengetahuan Mengenai Gizi Sehat Seimbang',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '1. Apakah siswi mengetahui panduan gizi sehat seimbang  yang diterbitkan Kemenkes RI?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo1,
                  items: _no1.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo1 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '2. Dalam panduan tersebut, apakah hanya menyebutkan tentang makanan saja?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo2,
                  items: _no2.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo2 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '3. Di dalam panduan tersebut, apakah memuat panduan mengenai konsumsi air minum?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo3,
                  items: _no3.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo3 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '4. Di dalam panduan tersebut, apakah memuat panduan mengenai kegiatan olahraga?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo4,
                  items: _no4.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo4 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '5. Apakah di dalam panduan tersebut memuat panduan mengenai kebersihan, sanitasi, dan higienis?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo5,
                  items: _no5.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo5 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '6. Bagian terbesar yang harus dikonsumsi adalah sumber karbohidrat?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo6,
                  items: _no6.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo6 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '7. Setelah karbohidrat, bahan makanan yang dikonsumsi dalam jumlah yang lebih sedikit adalah sumber serat dan vitamin (sayuran dan hewan)?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo7,
                  items: _no7.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo7 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '8. Sumber protein dapat berupa protein hewani dan nabati?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo8,
                  items: _no8.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo8 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '9. Bagian yang paling sedikit dikonsumsi adalah : gula, garam, dan minyak?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo9,
                  items: _no9.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo9 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '10. Pemantauan berat badan termasuk pesan dalam pedoman gizi seimbang?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo10,
                  items: _no10.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo10 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Pengetahuan Mengenai Kesehatan Reproduksi',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '1. Apakah mengetahui anemia termasuk dalam masalah kesehatan?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo11,
                  items: _no11.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo11 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '2. Silahkan pilih yang termasuk penyebab anemia:',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '     a. Kehilangan banyak darah',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 63,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo12a,
                  items: _no12a.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo12a = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '     b. Kecacingan',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 155,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo12b,
                  items: _no12b.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo12b = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '     c. Sumber makanan tidak memadai',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo12c,
                  items: _no12c.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo12c = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '     d. Kekurangan zat besi',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 95,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo12d,
                  items: _no12d.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo12d = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '3. Silahkan pilih yang termasuk gejala anemia:',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '     a. Gampang merasa letih',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 81,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo13a,
                  items: _no13a.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo13a = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '     b. Kesulitan bernafas',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 108,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo13b,
                  items: _no13b.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo13b = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '     c. Gangguan konsentrasi',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 82,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo13c,
                  items: _no13c.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo13c = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '     d. Demam',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 179,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo13d,
                  items: _no13d.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo13d = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '4. Apakah remaja putri termasuk dalam kelompok yang rawan mengalami anemia?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo14,
                  items: _no14.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo14 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '5. Apakah konsumsi sayuran yang berdaun hijau dapat membantu menurunkan risiko anemia?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo15,
                  items: _no15.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo15 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '6. Apakah vitamin C membantu dalam menurunkan risiko anemia?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo16,
                  items: _no16.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo16 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '7. Apakah remaja putri rutin mengkonsumsi tablet tambah darah?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo17,
                  items: _no17.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo17 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '8. Apakah dalam satu bulan terakhir mengkonsumsi tablet tambah darah?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo18,
                  items: _no18.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo18 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '9. Apakah kehilangan darah dalam volume yang besar dapat menyebabkan anemia?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo19,
                  items: _no19.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo19 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '10. Apakah sekolah membantu mendistribusikan tablet tambah darah untuk para siswi?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo20,
                  items: _no20.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo20 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '11. Apakah sekolah mendistribusikan obat cacing untuk para siswa/siswi?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo21,
                  items: _no21.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo21 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '12. Pada remaja putri apakah setiap bulan terjadi ovulasi?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo22,
                  items: _no22.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo22 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '13. Ukuran dada yang membesar menandakan kematangan seksual pada remaja putri?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo23,
                  items: _no23.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo23 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '14. Perubahan suara menjadi tanda kematangan seksual pada remaja putra?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo24,
                  items: _no24.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo24 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '15. Jika sudah mengalami menstruasi, remaja putri tidak bisa mengalami kehamilan?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo25,
                  items: _no25.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo25 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '16. Mencuci bagian intim dan sering melakukan gerakan melompat dapat mencegah kehamilan setelah melakukan hubungan intim?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo26,
                  items: _no26.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo26 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '17. Remaja putra yang sudah mengalami pubertas dapat menyebabkan kehamilan pada remaja putri?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo27,
                  items: _no27.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo27 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '18. Kehilangan darah setiap bulan yang dikenal dengan menstruasi merupakan hal normal pada remaja putri?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo28,
                  items: _no28.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo28 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '19. Penggunaan kondom dapat digunakan untuk mencegah kehamilan dan transmisi penyakit?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo29,
                  items: _no29.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo29 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      '20. Transmisi penyakit HIV / AIDS sulit terjadi pada kelompok remaja?',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 85,
                child: DropdownButtonFormField<String>(
                  isExpanded: false,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: primaryColor,
                  ),
                  value: _valNo30,
                  items: _no30.map((value) {
                    return DropdownMenuItem(
                      child: Text(
                        value,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: medium,
                        ),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(
                      () {
                        _valNo30 = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget saveButton() {
    return Container(
      height: 45,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      child: TextButton(
        onPressed: () {
          save(
            user: UserModel(
              uid: loggedInUser.uid,
              name: loggedInUser.name,
              email: loggedInUser.email,
              phone: loggedInUser.phone,
            ),
            date: DateFormat("EEEE, dd/MM/yyyy (hh:mm a)", "id_ID")
                .format(DateTime.now()),
            no1: _valNo1 ?? '-',
            no2: _valNo2 ?? '-',
            no3: _valNo3 ?? '-',
            no4: _valNo4 ?? '-',
            no5: _valNo5 ?? '-',
            no6: _valNo6 ?? '-',
            no7: _valNo7 ?? '-',
            no8: _valNo8 ?? '-',
            no9: _valNo9 ?? '-',
            no10: _valNo10 ?? '-',
            no11: _valNo11 ?? '-',
            no12a: _valNo12a ?? '-',
            no12b: _valNo12b ?? '-',
            no12c: _valNo12c ?? '-',
            no12d: _valNo12d ?? '-',
            no13a: _valNo13a ?? '-',
            no13b: _valNo13b ?? '-',
            no13c: _valNo13c ?? '-',
            no13d: _valNo13d ?? '-',
            no14: _valNo14 ?? '-',
            no15: _valNo15 ?? '-',
            no16: _valNo16 ?? '-',
            no17: _valNo17 ?? '-',
            no18: _valNo18 ?? '-',
            no19: _valNo19 ?? '-',
            no20: _valNo20 ?? '-',
            no21: _valNo21 ?? '-',
            no22: _valNo22 ?? '-',
            no23: _valNo23 ?? '-',
            no24: _valNo24 ?? '-',
            no25: _valNo25 ?? '-',
            no26: _valNo26 ?? '-',
            no27: _valNo27 ?? '-',
            no28: _valNo28 ?? '-',
            no29: _valNo29 ?? '-',
            no30: _valNo30 ?? '-',
          );
        },
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(
          'Simpan Jawaban',
          style: backgroundTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: fourthColor,
          automaticallyImplyLeading: false,
          elevation: 5,
          title: Text(
            'Kesehatan Reproduksi dan Pola Makan',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(context),
            icon: const Icon(Icons.chevron_left),
            color: primaryColor,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              nutrient(),
              const SizedBox(
                height: 10,
              ),
              saveButton(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void save({
    required UserModel user,
    required String date,
    required String no1,
    required String no2,
    required String no3,
    required String no4,
    required String no5,
    required String no6,
    required String no7,
    required String no8,
    required String no9,
    required String no10,
    required String no11,
    required String no12a,
    required String no12b,
    required String no12c,
    required String no12d,
    required String no13a,
    required String no13b,
    required String no13c,
    required String no13d,
    required String no14,
    required String no15,
    required String no16,
    required String no17,
    required String no18,
    required String no19,
    required String no20,
    required String no21,
    required String no22,
    required String no23,
    required String no24,
    required String no25,
    required String no26,
    required String no27,
    required String no28,
    required String no29,
    required String no30,
  }) async {
    if (_formKey.currentState!.validate()) {
      HistoryKnowledgeModel knowledgeModel = HistoryKnowledgeModel(
        user: user,
        date: date,
        knowledgeModel: [
          KnowledgeModel(
            no1: no1,
            no2: no2,
            no3: no3,
            no4: no4,
            no5: no5,
            no6: no6,
            no7: no7,
            no8: no8,
            no9: no9,
            no10: no10,
            no11: no11,
            no12a: no12a,
            no12b: no12b,
            no12c: no12c,
            no12d: no12d,
            no13a: no13a,
            no13b: no13b,
            no13c: no13c,
            no13d: no13d,
            no14: no14,
            no15: no15,
            no16: no16,
            no17: no17,
            no18: no18,
            no19: no19,
            no20: no20,
            no21: no21,
            no22: no22,
            no23: no23,
            no24: no24,
            no25: no25,
            no26: no26,
            no27: no27,
            no28: no28,
            no29: no29,
            no30: no30,
          )
        ],
      );

      await KnowledgeService().createKnowledge(knowledgeModel);

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomePage()),
        ModalRoute.withName('/'),
      );

      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: " ",
        widget: Text(
          'Data Berhasil Disimpan!',
          style: primaryTextStyle.copyWith(
            fontSize: 25,
            fontWeight: semibold,
          ),
          textAlign: TextAlign.center,
        ),
        confirmBtnText: 'Oke',
        confirmBtnColor: primaryColor,
        confirmBtnTextStyle: TextStyle(color: backgroundColor, fontSize: 18),
      );
    } else {
      return CoolAlert.show(
        barrierDismissible: false,
        context: context,
        type: CoolAlertType.error,
        title: " ",
        widget: Column(
          children: [
            Text(
              'Data Gagal Disimpan!',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Pastikan jawaban sudah terisi semua.',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        confirmBtnText: 'Mengerti',
        confirmBtnColor: primaryColor,
        confirmBtnTextStyle: TextStyle(color: backgroundColor, fontSize: 18),
      );
    }
  }
}
