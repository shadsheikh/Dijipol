import 'package:dijipol/presentation/utils/constant.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  static const String routeName = '/change-password';

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(width: 2, color: Color(0x11000000)))),
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).padding.top + 20,
          horizontal: 20,
        ),
        // margin: EdgeInsets.only(bottom: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.arrow_back, size: 30),
                      const SizedBox(width: 10),
                      Text(
                        'Geri Dön',
                        style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  'S.SOYLU',
                  style: D16M,
                ),
              ],
            ),
            SizedBox(height: 70),
            Row(
              children: [
                Icon(Icons.lock_outline_rounded,color: primaryColor),
                SizedBox(width: 10),
                Text('Şifre Değiştir',style: D24M),
              ],
            ),
            SizedBox(height: 46),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  AppTextInput(
                    label: 'Kullanıcı adi / Telefon',
                    placeholder: 'Isim veya tel no',
                    fontSize: 14,
                  ),
                  SizedBox(height: 25),
                  AppTextInput(
                    label: 'Şifreniz',
                    placeholder: 'Mevcut şifre',
                    fontSize: 14,
                  ),
                  SizedBox(height: 25),
                  AppTextInput(
                    label: 'Yeni Şifre',
                    placeholder: 'Yeni şifreniz',
                    fontSize: 14,
                  ),
                  SizedBox(height: 25),
                  AppTextInput(
                    label: 'Yeni Şifre Tekrar',
                    placeholder: 'Yeni şifreniz',
                    fontSize: 14,
                  ),
                ],
              ),
            ),),
            SizedBox(height: 25),
            AppButton(
              text: 'Şifremi degistir', onTap: () {  },
            ),
          ],
        ),
      ),
    );
  }
}

