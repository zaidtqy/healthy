import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class FormInformation extends StatefulWidget {
  const FormInformation({Key? key}) : super(key: key);

  @override
  State<FormInformation> createState() => _FormInformationState();
}

class _FormInformationState extends State<FormInformation> {
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
  Widget build(BuildContext context) {
    Widget nameForm() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
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
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Nama Lengkap',
                        hintStyle: primaryTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget addressForm() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat',
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Alamat Lengkap',
                        hintStyle: primaryTextStyle,
                      ),
                      maxLines: 5,
                      maxLength: 125,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget eduFatherForm() {
      return Container(
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
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  Container(
                    width: 310,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget eduMotherForm() {
      return Container(
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
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  Container(
                    width: 310,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget jobFatherForm() {
      return Container(
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
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  Container(
                    width: 310,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget jobMotherForm() {
      return Container(
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
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  Container(
                    width: 310,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget brothers() {
      return Container(
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
                color: backgroundColor,
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
                      'assets/phone-call.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Jumlah',
                          hintStyle: primaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget amount() {
      return Container(
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
                color: backgroundColor,
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
                      'assets/phone-call.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Anak ke',
                          hintStyle: primaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget incomeForm() {
      return Container(
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
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  Container(
                    width: 310,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget outcomeForm() {
      return Container(
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
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  Container(
                    width: 310,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget ageTeen() {
      return Container(
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
                color: backgroundColor,
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
                      'assets/phone-call.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Usia ke',
                          hintStyle: primaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget historyDisease() {
      return Container(
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
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: primaryColor,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/user.png',
                    width: 20,
                  ),
                  Container(
                    width: 310,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
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
                            setState(
                              () {
                                _valDisease = value;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

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
                  onPressed: () {},
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
        child: ListView(
          children: [
            nameForm(),
            addressForm(),
            eduFatherForm(),
            eduMotherForm(),
            jobFatherForm(),
            jobMotherForm(),
            Row(
              children: [
                brothers(),
                const Spacer(),
                amount(),
              ],
            ),
            incomeForm(),
            outcomeForm(),
            ageTeen(),
            historyDisease(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
