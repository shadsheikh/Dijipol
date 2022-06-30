import 'package:dijipol/presentation/auth/login.dart';
import 'package:dijipol/presentation/auth/register.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QueryInsuranceValue extends StatelessWidget {
  static const String routeName = '/query-insurance-value';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                AppButton(
                  text: 'Giriş Yap',
                  onTap: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  fontSize: 14,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  fontWeight: FontWeight.w500,
                  color: Colors.transparent,
                  textColor: Theme.of(context).primaryColorDark,
                ),
                const SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: AppButton(
                    text: 'Üye Ol',
                    fontSize: 14,
                    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    fontWeight: FontWeight.w500,
                    onTap: () {
                      Navigator.of(context).pushNamed(Register.routeName);
                    },
                    color: Colors.transparent,
                    textColor: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Kasko Değeri sorgula',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColorDark,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppTextInput(
                displayBorder: true,
                floatingLabel: 'Model yılı',
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppTextInput(
                displayBorder: true,
                floatingLabel: 'Marka',
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppTextInput(
                displayBorder: true,
                floatingLabel: 'Model',
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Kasko Değeri',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColorDark,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Toyota Corolla 1.4 Advanced 2021',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).primaryColorDark,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '250.000 TL',
                style: TextStyle(
                  fontSize: 34,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppButton(
                text: 'Tamamla',
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
