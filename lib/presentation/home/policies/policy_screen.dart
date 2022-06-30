import 'package:dijipol/presentation/auth/login.dart';
import 'package:dijipol/presentation/auth/register.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

class PolicyScreen extends StatelessWidget {
  static const String routeName = '/policy-screen';

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(width: 2, color: Color(0x11000000)))),
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).padding.top + 20,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                'lib/assets/images/logo_banner.png',
                width: width / 3,
                fit: BoxFit.scaleDown,
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
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'Giriş Yapınız',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Bu alanı görüntülemek için lütfen giriş yapınız. Üye degilseniz, üye olarak poliçe tekliflerimizden faydalanabilirsiniz.',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).primaryColorLight,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: AppButton(
                  text: 'Giriş Yap',
                  onTap: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: AppButton(
                    text: 'Üye Ol',
                    onTap: () {
                      Navigator.of(context).pushNamed(Register.routeName);
                    },
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 18,
                    ),
                    color: Colors.white,
                    textColor: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
