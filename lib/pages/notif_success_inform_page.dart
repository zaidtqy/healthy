import 'package:flutter/material.dart';
import 'package:healthy/theme.dart';

class NotifSuccessInform extends StatelessWidget {
  const NotifSuccessInform({Key? key}) : super(key: key);

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
            'Data Informasi Subyek Tersimpan',
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
        child: Column(
          children: [
            const SizedBox(
              height: 180,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/letter.png',
                  width: 250,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Terima Kasih Sudah Mengisi Data Informasi Anda!',
              style: primaryTextStyle.copyWith(
                fontSize: 25,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
