import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  static const String routeName = '/forgot-pass';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(width: 20),
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.close, size: 30),
                ),
                const SizedBox(width: 20),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 50),
                      Text(
                        'Şifremi Unuttum',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Dijipol.com’a üye olurken kullandığınız telefon numarasını girin, yeni şifre oluşturmak için bağlantı adresinize gelsin.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).primaryColorLight,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 30),
                      const AppTextInput(label: 'Telefon Numaranız'),
                      const SizedBox(height: 40),
                      AppButton(
                        text: 'Giriş Yap',
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
