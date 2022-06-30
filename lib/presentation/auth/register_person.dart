import 'package:dijipol/data/models/signup.dart';
import 'package:dijipol/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPerson extends StatefulWidget {
  @override
  _RegisterPersonState createState() => _RegisterPersonState();
}

class _RegisterPersonState extends State<RegisterPerson> {
  bool policyChecked = false;
  bool illuminationChecked = false;
  final TextEditingController name = TextEditingController();
  final TextEditingController surname = TextEditingController();
  final TextEditingController identityNumber = TextEditingController();
  final TextEditingController eMail = TextEditingController();
  final TextEditingController telephoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width - 40,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: const Color(0xFFe4e7ec)),
                    ),
                    child: AppTextInput(placeholder: 'Adınız',controller: name),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: const Color(0xFFe4e7ec)),
                    ),
                    child: AppTextInput(placeholder: 'SoyAdınız',controller: surname),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child:  AppTextInput(placeholder: 'TC Kimlik Numarası',controller: identityNumber),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child:  AppTextInput(placeholder: 'E-posta Adresi',controller: eMail),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child:  AppTextInput(placeholder: 'Telefon Numaranız', controller: telephoneNumber),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child:  AppTextInput(placeholder: 'Şifrenizi Yazın', controller: password),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child: const AppTextInput(placeholder: 'Şifrenizi Tekrar Yazın'),
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Checkbox(
                  value: policyChecked,
                  onChanged: (bool? p) => setState(() {
                    policyChecked = p ?? false;
                  }),
                ),
                Flexible(
                  child: Text(
                    'Poliçe Bilgilendirme formu’nu okudum.',
                    style: TextStyle(color: Theme.of(context).primaryColorDark),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: policyChecked,
                  onChanged: (bool? p) => setState(() {
                    policyChecked = p ?? false;
                  }),
                ),
                Flexible(
                  child: Text(
                    'Aydınlatma Metni’ni okudum.',
                    style: TextStyle(color: Theme.of(context).primaryColorDark),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            AppButton(text: 'Üye Ol', onTap: () {
              BlocProvider.of<SignupCubit>(context).signup(Signup(name: name.text, surname: surname.text, identityNumber: identityNumber.text, eMail: eMail.text, telephoneNumber: telephoneNumber.text, password: password.text));
            }),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
