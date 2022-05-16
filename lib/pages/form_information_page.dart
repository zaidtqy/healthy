import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthy/models/information_model.dart';
import 'package:healthy/models/user_model.dart';
import 'package:healthy/pages/home_page.dart';
import 'package:healthy/services/information_service.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthy/theme.dart';
import 'package:intl/intl.dart';

class FormInformation extends StatefulWidget {
  const FormInformation({Key? key}) : super(key: key);

  @override
  State<FormInformation> createState() => _FormInformationState();
}

class _FormInformationState extends State<FormInformation> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // controller
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final brothersController = TextEditingController();
  final amountController = TextEditingController();
  final ageTeenController = TextEditingController();
  final otherFormController = TextEditingController();

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel(uid: '1234');

  bool _isShowField = false;

  String? _valEduFather;
  final _eduFather = [
    "Tidak Sekolah",
    "Tidak Tamat SD",
    "Tamat SD",
    "Tidak Tamat SMP",
    "Tamat SMP",
    "Tidak Tamat SMA",
    "Tamat SMA",
    "Tamat Diploma I,II,III, dan IV",
    "Sarjana, Master, Doktor"
  ];

  String? _valEduMother;
  final _eduMother = [
    "Tidak Sekolah",
    "Tidak Tamat SD",
    "Tamat SD",
    "Tidak Tamat SMP",
    "Tamat SMP",
    "Tidak Tamat SMA",
    "Tamat SMA",
    "Tamat Diploma I,II,III, dan IV",
    "Sarjana, Master, Doktor"
  ];

  String? _valJobFather;
  final _jobFather = [
    "ASN, TNI, Polri aktif/pensiunan",
    "Pegawai Swasta",
    "Professional",
    "Wiraswasta",
    "Buruh Harian",
    "Buruh Lepas",
    "Tidak Bekerja"
  ];

  String? _valJobMother;
  final _jobMother = [
    "ASN, TNI, Polri aktif/pensiunan",
    "Pegawai Swasta",
    "Professional",
    "Wiraswasta",
    "Buruh Harian",
    "Buruh Lepas",
    "Tidak Bekerja"
  ];

  String? _valIncome;
  final _income = [
    "< Rp 5.000.000",
    "Rp 5.000.000 - 10.000.000",
    "> Rp 10.000.000"
  ];

  String? _valOutcome;
  final _outcome = [
    "< Rp 5.000.000",
    "Rp 5.000.000 - 10.000.000",
    "> Rp 10.000.000"
  ];

  String? _valDisease;
  final _disease = [
    "Tidak ada",
    "Hipertensi",
    "Diabetes Mellitus",
    "Jantung Bawaan",
    "Penyakit Lain"
  ];

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

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    brothersController.dispose();
    amountController.dispose();
    ageTeenController.dispose();
    otherFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // name
    final name = Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nama Lengkap',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: nameController,
            style: primaryTextStyle,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            validator: (value) {
              RegExp regex = RegExp(r'^.{3,}$');
              if (value!.isEmpty) {
                return ("Form ini Harus Diisi");
              }
              if (!regex.hasMatch(value)) {
                return ("Masukkan Nama Lengkap Dengan Benar (Minimal 3 Karakter)");
              }
              return null;
            },
            onSaved: (value) {
              nameController.text = value!;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Nama Lengkap',
              hintStyle: primaryTextStyle,
              counterText: "",
            ),
            maxLength: 45,
          ),
        ],
      ),
    );

    // address
    final address = Container(
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
          TextFormField(
            controller: addressController,
            style: primaryTextStyle,
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            onSaved: (value) {
              addressController.text = value!;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Alamat Lengkap',
              hintStyle: primaryTextStyle,
            ),
            maxLines: 5,
            maxLength: 125,
          ),
        ],
      ),
    );

    // eduFatherForm
    final eduFatherForm = Container(
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
          DropdownButtonFormField<String>(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            hint: Text(
              "Pendidikan Terakhir Ayah",
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: primaryColor,
            ),
            value: _valEduFather,
            items: _eduFather.map((value) {
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
                  _valEduFather = value;
                },
              );
            },
          ),
        ],
      ),
    );

    // eduMotherForm
    final eduMotherForm = Container(
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
          DropdownButtonFormField<String>(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            hint: Text(
              "Pendidikan Terakhir Ibu",
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: primaryColor,
            ),
            value: _valEduMother,
            items: _eduMother.map((value) {
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
                  _valEduMother = value;
                },
              );
            },
          ),
        ],
      ),
    );

    // jobFatherForm
    final jobFatherForm = Container(
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
          DropdownButtonFormField<String>(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            hint: Text(
              "Pekerjaan Ayah",
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: primaryColor,
            ),
            value: _valJobFather,
            items: _jobFather.map((value) {
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
                  _valJobFather = value;
                },
              );
            },
          ),
        ],
      ),
    );

    // jobMotherForm
    final jobMotherForm = Container(
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
          DropdownButtonFormField<String>(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            hint: Text(
              "Pekerjaan Ibu",
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: primaryColor,
            ),
            value: _valJobMother,
            items: _jobMother.map((value) {
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
                  _valJobMother = value;
                },
              );
            },
          ),
        ],
      ),
    );

    // brothers
    final brothers = Container(
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
          TextFormField(
            controller: brothersController,
            style: primaryTextStyle,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            onSaved: (value) {
              brothersController.text = value!;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Jumlah',
              hintStyle: primaryTextStyle,
              counterText: "",
            ),
            maxLength: 2,
          ),
        ],
      ),
    );

    // amount
    final amount = Container(
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
          TextFormField(
            controller: amountController,
            style: primaryTextStyle,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            onSaved: (value) {
              amountController.text = value!;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Anak ke',
              hintStyle: primaryTextStyle,
              counterText: "",
            ),
            maxLength: 2,
          ),
        ],
      ),
    );

    // incomeForm
    final incomeForm = Container(
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
          DropdownButtonFormField<String>(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            hint: Text(
              "Jumlah pendapatan keluarga",
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: primaryColor,
            ),
            value: _valIncome,
            items: _income.map((value) {
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
                  _valIncome = value;
                },
              );
            },
          ),
        ],
      ),
    );

    // outcomeForm
    final outcomeForm = Container(
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
          DropdownButtonFormField<String>(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            hint: Text(
              "Jumlah pengeluaran keluarga",
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: primaryColor,
            ),
            value: _valOutcome,
            items: _outcome.map((value) {
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
                  _valOutcome = value;
                },
              );
            },
          ),
        ],
      ),
    );

    // ageTeen
    final ageTeen = Container(
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
          TextFormField(
            controller: ageTeenController,
            style: primaryTextStyle,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            onSaved: (value) {
              ageTeenController.text = value!;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Usia ke',
              hintStyle: primaryTextStyle,
              counterText: "",
            ),
            maxLength: 3,
          ),
        ],
      ),
    );

    // otherForm
    final otherForm = Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Penyakit Lain',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: otherFormController,
            style: primaryTextStyle,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            onSaved: (value) {
              otherFormController.text = value!;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Penyakit lain',
              hintStyle: primaryTextStyle,
            ),
          ),
        ],
      ),
    );

    // historyDisease
    final historyDisease = Container(
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
          DropdownButtonFormField<String>(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return ("Form ini Harus Diisi");
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Image.asset(
                  'assets/union.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            hint: Text(
              "Riwayat penyakit",
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: primaryColor,
            ),
            value: _valDisease,
            items: _disease.map((value) {
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
              debugPrint('HERE : $value');
              setState(
                () {
                  _valDisease = value;
                  if (_valDisease == _disease.last) {
                    setState(() {
                      _isShowField = true;
                    });
                  } else {
                    setState(() {
                      _isShowField = false;
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );

    // saveButton
    final saveButton = Container(
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
            name: nameController.text,
            address: addressController.text,
            eduFather: _valEduFather ?? 'Data Kosong',
            eduMother: _valEduMother ?? 'Data Kosong',
            jobFather: _valJobFather ?? 'Data Kosong',
            jobMother: _valJobMother ?? 'Data Kosong',
            brothers: brothersController.text,
            amount: amountController.text,
            income: _valIncome ?? 'Data Kosong',
            outcome: _valOutcome ?? 'Data Kosong',
            ageTeen: ageTeenController.text,
            disease: _valDisease ?? 'Data Kosong',
            otherDisease: otherFormController.text,
          );
        },
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(
          'Simpan Data',
          style: backgroundTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: fourthColor,
          automaticallyImplyLeading: false,
          title: Text(
            'Data Informasi Subyek',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
          ),
          elevation: 5,
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                name,
                address,
                eduFatherForm,
                eduMotherForm,
                jobFatherForm,
                jobMotherForm,
                Row(
                  children: [
                    Expanded(child: brothers),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(child: amount),
                  ],
                ),
                incomeForm,
                outcomeForm,
                ageTeen,
                historyDisease,
                if (_isShowField) ...[
                  otherForm,
                ],
                saveButton,
              ],
            ),
          ),
        ),
      ),
    );
  }

  void save({
    required UserModel user,
    required String date,
    required String name,
    required String address,
    required String eduFather,
    required String eduMother,
    required String jobFather,
    required String jobMother,
    required String brothers,
    required String amount,
    required String income,
    required String outcome,
    required String ageTeen,
    String? disease,
    String? otherDisease,
  }) async {
    if (_formKey.currentState!.validate()) {
      String dataDisease =
          (disease == 'Penyakit Lain') ? otherDisease! : disease!;

      HistoryInformModel informModel = HistoryInformModel(
        user: user,
        date: date,
        name: name,
        address: address,
        eduFather: eduFather,
        eduMother: eduMother,
        jobFather: jobFather,
        jobMother: jobMother,
        brothers: brothers,
        amount: amount,
        income: income,
        outcome: outcome,
        ageTeen: ageTeen,
        disease: dataDisease,
      );
      await InformationService().createInformation(informModel);

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
              'Mohon pastikan tidak ada form yang belum diisi',
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

  // postDetailsToFirestore() async {
  //   // calling our firestore
  //   // calling our user model
  //   // sending there values

  //   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  //   User? user = _auth.currentUser;

  //   UserModel userModel = UserModel();

  //   // writing all the values
  //   userModel.email = user!.email;
  //   userModel.uid = user.uid;
  //   userModel.name = nameEditingController.text;
  //   userModel.phone = phoneEditingController.text;

  //   await firebaseFirestore
  //       .collection("users")
  //       .doc(user.uid)
  //       .set(userModel.toMap());
  //   Fluttertoast.showToast(msg: "Akun Anda Berhasil Dibuat!");

  //   Navigator.pushAndRemoveUntil(
  //       (context),
  //       MaterialPageRoute(builder: (context) => const SignInPage()),
  //       (route) => false);
  // }

}
