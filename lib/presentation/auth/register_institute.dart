import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/material.dart';

class RegisterInstitute extends StatefulWidget {
  @override
  _RegisterInstituteState createState() => _RegisterInstituteState();
}

class _RegisterInstituteState extends State<RegisterInstitute> {
  bool policyChecked = false;
  bool illuminationChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child: const AppTextInput(placeholder: 'Firma Ünvanı'),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child: const AppTextInput(placeholder: 'Vergi Kimlik No'),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child: const AppTextInput(placeholder: 'Cep Telefonu'),
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child: const AppTextInput(placeholder: 'E-Posta'),
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: const Color(0xFFe4e7ec)),
                    ),
                    child: const AppTextInput(placeholder: 'İl'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: const Color(0xFFe4e7ec)),
                    ),
                    child: const AppTextInput(placeholder: 'İlçe'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xFFe4e7ec)),
              ),
              child: const AppTextInput(placeholder: 'Şifreniz'),
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
            AppButton(text: 'Üye Ol', onTap: () {}),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
