import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class FormActivity extends StatefulWidget {
  const FormActivity({Key? key}) : super(key: key);

  @override
  State<FormActivity> createState() => _FormActivityState();
}

class _FormActivityState extends State<FormActivity> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // controller

  final other1FormController = TextEditingController();
  final minutesAct1Controller = TextEditingController();
  final other2FormController = TextEditingController();
  final minutesAct2Controller = TextEditingController();
  final other3FormController = TextEditingController();
  final minutesAct3Controller = TextEditingController();
  final other4FormController = TextEditingController();
  final minutesAct4Controller = TextEditingController();

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
  void dispose() {
    other1FormController.dispose();
    minutesAct1Controller.dispose();
    other2FormController.dispose();
    minutesAct2Controller.dispose();
    other3FormController.dispose();
    minutesAct3Controller.dispose();
    other4FormController.dispose();
    minutesAct4Controller.dispose();
    super.dispose();
  }

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
            SizedBox(
              width: 225,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
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
          ],
        ),
      );
    }

    Widget other1Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: TextFormField(
          controller: other1FormController,
          style: primaryTextStyle,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Form ini Harus Diisi");
            }
            return null;
          },
          onSaved: (value) {
            other1FormController.text = value!;
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
            hintText: 'Kegiatan lain',
            hintStyle: primaryTextStyle,
          ),
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
            SizedBox(
              width: 125,
              child: TextFormField(
                controller: minutesAct1Controller,
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
                  minutesAct1Controller.text = value!;
                },
                decoration: InputDecoration(
                  label: const Text("Menit"),
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
                  hintText: '0',
                  hintStyle: primaryTextStyle,
                  counterText: "",
                ),
                maxLength: 3,
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
            SizedBox(
              width: 225,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
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
          ],
        ),
      );
    }

    Widget other2Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: TextFormField(
          autofocus: true,
          controller: other2FormController,
          style: primaryTextStyle,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Form ini Harus Diisi");
            }
            return null;
          },
          onSaved: (value) {
            other2FormController.text = value!;
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
            hintText: 'Kegiatan lain',
            hintStyle: primaryTextStyle,
          ),
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
            SizedBox(
              width: 125,
              child: TextFormField(
                controller: minutesAct2Controller,
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
                  minutesAct2Controller.text = value!;
                },
                decoration: InputDecoration(
                  label: const Text("Menit"),
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
                  hintText: '0',
                  hintStyle: primaryTextStyle,
                  counterText: "",
                ),
                maxLength: 3,
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
            SizedBox(
              width: 225,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
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
          ],
        ),
      );
    }

    Widget other3Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: TextFormField(
          autofocus: true,
          controller: other3FormController,
          style: primaryTextStyle,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Form ini Harus Diisi");
            }
            return null;
          },
          onSaved: (value) {
            other3FormController.text = value!;
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
            hintText: 'Kegiatan lain',
            hintStyle: primaryTextStyle,
          ),
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
            SizedBox(
              width: 125,
              child: TextFormField(
                controller: minutesAct3Controller,
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
                  minutesAct3Controller.text = value!;
                },
                decoration: InputDecoration(
                  label: const Text("Menit"),
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
                  hintText: '0',
                  hintStyle: primaryTextStyle,
                  counterText: "",
                ),
                maxLength: 3,
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
            SizedBox(
              width: 225,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
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
          ],
        ),
      );
    }

    Widget other4Form() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: TextFormField(
          autofocus: true,
          controller: other4FormController,
          style: primaryTextStyle,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value!.isEmpty) {
              return ("Form ini Harus Diisi");
            }
            return null;
          },
          onSaved: (value) {
            other4FormController.text = value!;
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
            hintText: 'Kegiatan lain',
            hintStyle: primaryTextStyle,
          ),
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
            SizedBox(
              width: 125,
              child: TextFormField(
                controller: minutesAct4Controller,
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
                  minutesAct4Controller.text = value!;
                },
                decoration: InputDecoration(
                  label: const Text("Menit"),
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
                  hintText: '0',
                  hintStyle: primaryTextStyle,
                  counterText: "",
                ),
                maxLength: 3,
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
          onPressed: () {
            save();
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
        child: Form(
          key: _formKey,
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
      ),
    );
  }

  void save() async {
    if (_formKey.currentState!.validate()) {
      // await _auth
      //     .createUserWithEmailAndPassword(email: email, password: password)
      //     .then((value) => {postDetailsToFirestore()})
      //     .catchError((e) {
      //   Fluttertoast.showToast(msg: e!.message);
      // });
    }
  }
}
