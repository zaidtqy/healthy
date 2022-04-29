import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthy/models/user_model.dart';
import 'package:healthy/pages/sign_in_page.dart';
import 'package:healthy/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _auth = FirebaseAuth.instance;

  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final nameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final phoneEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();

  @override
  void dispose() {
    nameEditingController.dispose();
    emailEditingController.dispose();
    phoneEditingController.dispose();
    passwordEditingController.dispose();
    confirmPasswordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // header
    final header = Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daftar',
            style: primaryTextStyle.copyWith(
              fontSize: 25,
              fontWeight: bold,
            ),
          ),
          Text(
            'Daftar untuk dapat masuk',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );

    // name
    final name = Container(
      margin: const EdgeInsets.only(top: 65),
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
            controller: nameEditingController,
            style: primaryTextStyle,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            validator: (value) {
              RegExp regex = RegExp(r'^.{3,}$');
              if (value!.isEmpty) {
                return ("Nama Harus Diisi");
              }
              if (!regex.hasMatch(value)) {
                return ("Masukkan Nama Dengan Benar (Minimal 3 Karakter)");
              }
              return null;
            },
            onSaved: (value) {
              nameEditingController.text = value!;
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
                  'assets/user.png',
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

    // email
    final email = Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Alamat Email',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: emailEditingController,
            style: primaryTextStyle,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Alamat Email Harus Diisi");
              }
              // reg expression for email validation
              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                  .hasMatch(value)) {
                return ("Masukkan Email Dengan Benar");
              }
              return null;
            },
            onSaved: (value) {
              emailEditingController.text = value!;
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
                  'assets/email.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Alamat Email',
              hintStyle: primaryTextStyle,
              counterText: "",
            ),
            maxLength: 25,
          ),
        ],
      ),
    );

    // phone
    final phone = Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nomor Telepon',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: phoneEditingController,
            style: primaryTextStyle,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Nomor Telepon Harus Diisi");
              }
              return null;
            },
            onSaved: (value) {
              phoneEditingController.text = value!;
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
                  'assets/phone-call.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Nomor Telepon',
              hintStyle: primaryTextStyle,
              counterText: "",
            ),
            maxLength: 13,
          ),
        ],
      ),
    );

    // password
    final password = Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kata Sandi',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: passwordEditingController,
            obscureText: true,
            style: primaryTextStyle,
            validator: (value) {
              RegExp regex = RegExp(r'^.{8,}$');
              if (value!.isEmpty) {
                return ("Kata Sandi Harus Diisi");
              }
              if (!regex.hasMatch(value)) {
                return ("Masukkan Kata Sandi Dengan Benar (Minimal 8 Karakter)");
              }
              return null;
            },
            onSaved: (value) {
              passwordEditingController.text = value!;
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
                  'assets/lock.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Kata Sandi',
              hintStyle: primaryTextStyle,
              counterText: "",
            ),
            maxLength: 45,
          ),
        ],
      ),
    );

    // confirm password
    final confirmPassword = Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ulangi Kata Sandi',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: confirmPasswordEditingController,
            obscureText: true,
            style: primaryTextStyle,
            validator: (value) {
              if (confirmPasswordEditingController.text !=
                  passwordEditingController.text) {
                return "Kata Sandi Tidak Sama";
              }
              return null;
            },
            onSaved: (value) {
              confirmPasswordEditingController.text = value!;
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
                  'assets/lock.png',
                  width: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Ulangi Kata Sandi',
              hintStyle: primaryTextStyle,
              counterText: "",
            ),
            maxLength: 45,
          ),
        ],
      ),
    );

    // button
    final registerButton = Container(
      height: 45,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          signUpPage(
              emailEditingController.text, passwordEditingController.text);
        },
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(
          'Daftar Akun',
          style: backgroundTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
        ),
      ),
    );

    // footer
    final footer = Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sudah punya akun?',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              'Masuk disini',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: bold,
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                header,
                name,
                email,
                phone,
                password,
                confirmPassword,
                registerButton,
                const SizedBox(
                  height: 30,
                ),
                footer,
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUpPage(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sending there values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.name = nameEditingController.text;
    userModel.phone = phoneEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Akun Anda Berhasil Dibuat!");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => const SignInPage()),
        (route) => false);
  }
}
