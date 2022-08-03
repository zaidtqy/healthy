import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthy/pages/sign_up_page.dart';
import 'package:healthy/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String role = 'user';

  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // email
    final email = TextFormField(
      controller: emailController,
      style: primaryTextStyle,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Alamat Email Harus Diisi");
        }
        // reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Mohon Masukkan Alamat Email Dengan Benar");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
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
        hintText: 'Alamat Email',
        hintStyle: primaryTextStyle,
        counterText: "",
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      maxLength: 25,
    );

    // password
    final password = TextFormField(
      obscureText: true,
      controller: passwordController,
      style: primaryTextStyle,
      textInputAction: TextInputAction.done,
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
        passwordController.text = value!;
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
        hintText: 'Kata Sandi',
        hintStyle: primaryTextStyle,
        counterText: "",
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      maxLength: 45,
    );

    // login button
    final loginButton = Container(
      height: 45,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () async {
          signIn(emailController.text, passwordController.text);
        },
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(
          'Masuk',
          style: backgroundTextStyle.copyWith(
            fontSize: 15,
            fontWeight: bold,
          ),
        ),
      ),
    );

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Masuk',
              style: primaryTextStyle.copyWith(
                fontSize: 25,
                fontWeight: bold,
              ),
            ),
            Text(
              'Masuk untuk dapat melanjutkan',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 115),
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
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
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
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum punya akun?',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                  ModalRoute.withName('/'),
                );
              },
              child: Text(
                'Daftar disini',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                emailInput(),
                email,
                passwordInput(),
                password,
                loginButton,
                const Spacer(),
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) async {
        final SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString('email_key', emailController.text);
        pref.setString('password_key', passwordController.text);

        Fluttertoast.showToast(msg: "Berhasil Masuk");

        checkRole();
      }).catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  void checkRole() async {
    User? user = FirebaseAuth.instance.currentUser;
    final DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get();

    setState(() {
      role = snap['role'];
    });

    if (role == 'user') {
      Navigator.of(context).pushNamedAndRemoveUntil(
          '/home-page', (Route<dynamic> route) => false);
    } else if (role == 'admin') {
      Navigator.of(context).pushNamedAndRemoveUntil(
          '/admin-homepage', (Route<dynamic> route) => false);
    }
  }
}
