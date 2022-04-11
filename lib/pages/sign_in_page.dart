import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        margin: const EdgeInsets.only(top: 65),
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
                      'assets/email.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Alamat Email',
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
                      'assets/lock.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Kata Sandi',
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

    Widget signInButton() {
      return Container(
        height: 45,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
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
            'Masuk',
            style: backgroundTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
            ),
          ),
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
                Navigator.pushNamed(context, '/sign-up');
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              signInButton(),
              const Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
