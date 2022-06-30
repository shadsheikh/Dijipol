import 'package:dijipol/data/models/login.dart';
import 'package:dijipol/logic/cubits/login_cubit/login_cubit.dart';
import 'package:dijipol/presentation/auth/forgot_pass.dart';
import 'package:dijipol/presentation/auth/register.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final TextEditingController username = TextEditingController();
    final TextEditingController password = TextEditingController();

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
                Image.asset(
                  'lib/assets/images/logo_banner.png',
                  width: width / 3,
                  fit: BoxFit.scaleDown,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close, size: 30),
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
                        'Giriş Yap',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 30),
                      AppTextInput(label: 'Kullanıcı Adı / Telefon',controller: username),
                      const SizedBox(height: 30),
                      AppTextInput(label: 'Şifreniz', obscureText: true,controller: password),
                      const SizedBox(height: 40),
                      AppButton(
                        text: 'Giriş Yap',
                        onTap: () {
                          BlocProvider.of<LoginCubit>(context).login(Login(username: username.text, password: password.text));
                        },
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(ForgotPass.routeName);
                            },
                            child: Text(
                              'Şifremi Unuttum',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(Register.routeName),
                            child: RichText(
                              text: TextSpan(
                                children: <InlineSpan>[
                                  const TextSpan(text: 'Üye Değilseniz '),
                                  TextSpan(
                                    text: 'Üye Olun',
                                    style: TextStyle(color: Theme.of(context).primaryColor),
                                  ),
                                ],
                                style: TextStyle(
                                  color: Theme.of(context).primaryColorLight,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
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
