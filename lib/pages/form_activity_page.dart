import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class FormActivity extends StatefulWidget {
  const FormActivity({Key? key}) : super(key: key);

  @override
  State<FormActivity> createState() => _FormActivityState();
}

class _FormActivityState extends State<FormActivity> {
  bool _isShowField1 = false;
  bool _isShowField2 = false;
  bool _isShowField3 = false;
  bool _isShowField4 = false;

  String? _valAct1;
  final _act1 = [
    "Berjalan",
    "Berlari",
    "Senam",
    "Berenang",
    "Duduk/Kegiatan Santai",
    "Kegiatan Lain"
  ];

  String? _valAct2;
  final _act2 = [
    "Berjalan",
    "Berlari",
    "Senam",
    "Berenang",
    "Duduk/Kegiatan Santai",
    "Kegiatan Lain"
  ];

  String? _valAct3;
  final _act3 = [
    "Berjalan",
    "Berlari",
    "Senam",
    "Berenang",
    "Duduk/Kegiatan Santai",
    "Kegiatan Lain"
  ];

  String? _valAct4;
  final _act4 = [
    "Berjalan",
    "Berlari",
    "Senam",
    "Berenang",
    "Duduk/Kegiatan Santai",
    "Kegiatan Lain"
  ];

  @override
  Widget build(BuildContext context) {
    Widget act1Form() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bangun Tidur - Jam 12 Siang',
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
              width: 195,
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
                  SizedBox(
                    width: 143,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text(
                            "Aktifitas",
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: medium,
                            ),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: primaryColor,
                          ),
                          value: _valAct1,
                          items: _act1.map((value) {
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
                            setState(() {
                              _valAct1 = value;
                              if (_valAct1 == _act1.last) {
                                setState(() {
                                  _isShowField1 = true;
                                });
                              } else {
                                _isShowField1 = false;
                              }
                            });
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

    Widget other1Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kegiatan Lain',
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
                      autofocus: true,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Kegiatan lain',
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

    Widget minutesAct1() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lama Waktu',
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
              width: 155,
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
                        decoration: InputDecoration(
                          hintText: '0',
                          hintStyle: primaryTextStyle,
                          counterText: "",
                          border: InputBorder.none,
                        ),
                        maxLength: 3,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Menit',
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
      );
    }

    Widget act2Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jam 12 Siang - Jam 6 Sore',
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
              width: 195,
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
                  SizedBox(
                    width: 143,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text(
                            "Aktifitas",
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: medium,
                            ),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: primaryColor,
                          ),
                          value: _valAct2,
                          items: _act2.map((value) {
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
                            setState(() {
                              _valAct2 = value;
                              if (_valAct2 == _act2.last) {
                                setState(() {
                                  _isShowField2 = true;
                                });
                              } else {
                                _isShowField2 = false;
                              }
                            });
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

    Widget other2Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kegiatan Lain',
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
                      autofocus: true,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Kegiatan lain',
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

    Widget minutesAct2() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lama Waktu',
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
              width: 155,
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
                        decoration: InputDecoration(
                          hintText: '0',
                          hintStyle: primaryTextStyle,
                          counterText: "",
                          border: InputBorder.none,
                        ),
                        maxLength: 3,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Menit',
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
      );
    }

    Widget act3Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jam 6 Sore - Jam 10 Malam',
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
              width: 195,
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
                  SizedBox(
                    width: 143,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text(
                            "Aktifitas",
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: medium,
                            ),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: primaryColor,
                          ),
                          value: _valAct3,
                          items: _act3.map((value) {
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
                            setState(() {
                              _valAct3 = value;
                              if (_valAct3 == _act3.last) {
                                setState(() {
                                  _isShowField3 = true;
                                });
                              } else {
                                _isShowField3 = false;
                              }
                            });
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

    Widget other3Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kegiatan Lain',
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
                      autofocus: true,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Kegiatan lain',
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

    Widget minutesAct3() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lama Waktu',
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
              width: 155,
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
                        decoration: InputDecoration(
                          hintText: '0',
                          hintStyle: primaryTextStyle,
                          counterText: "",
                          border: InputBorder.none,
                        ),
                        maxLength: 3,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Menit',
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
      );
    }

    Widget act4Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jam 10 Malam - Bangun Pagi',
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
              width: 195,
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
                  SizedBox(
                    width: 143,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: Text(
                            "Aktifitas",
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: medium,
                            ),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: primaryColor,
                          ),
                          value: _valAct4,
                          items: _act4.map((value) {
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
                            setState(() {
                              _valAct4 = value;
                              if (_valAct4 == _act4.last) {
                                setState(() {
                                  _isShowField4 = true;
                                });
                              } else {
                                _isShowField4 = false;
                              }
                            });
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

    Widget other4Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kegiatan Lain',
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
                      autofocus: true,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Kegiatan lain',
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

    Widget minutesAct4() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lama Waktu',
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
              width: 155,
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
                        decoration: InputDecoration(
                          hintText: '0',
                          hintStyle: primaryTextStyle,
                          counterText: "",
                          border: InputBorder.none,
                        ),
                        maxLength: 3,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Menit',
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
      );
    }

    Widget saveButton() {
      return Container(
        height: 45,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        child: TextButton(
          onPressed: () {},
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/back.png',
                    width: 20,
                  ),
                ),
                Text(
                  'Data Aktifitas Fisik Subyek',
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
            Row(
              children: [
                act1Form(),
                const Spacer(),
                minutesAct1(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            if (_isShowField1) ...[
              other1Form(),
            ],
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                act2Form(),
                const Spacer(),
                minutesAct2(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            if (_isShowField2) ...[
              other2Form(),
            ],
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                act3Form(),
                const Spacer(),
                minutesAct3(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            if (_isShowField3) ...[
              other3Form(),
            ],
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                act4Form(),
                const Spacer(),
                minutesAct4(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            if (_isShowField4) ...[
              other4Form(),
            ],
            const SizedBox(
              height: 10,
            ),
            saveButton(),
          ],
        ),
      ),
    );
  }
}
