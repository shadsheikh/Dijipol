import 'package:dijipol/presentation/home/offers/Evcil/evcil_enter_info.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:dijipol/presentation/widgets/custom_icon.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EvcilHomeScreen extends StatefulWidget {
  static const String routeName = '/evcil-home';

  @override
  _EvcilHomeScreenState createState() => _EvcilHomeScreenState();
}

class _EvcilHomeScreenState extends State<EvcilHomeScreen> {
  bool policyChecked = false;
  bool illuminationChecked = false;
  bool receiveSmsChecked = false;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color(0xFFbbc3cf),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Text(
                  'S. SOYLU',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CustomIcon(
                'pet',
                size: 40,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Evcil Hayvan Sigortası ',
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                width: width,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: <Widget>[
                      Container(),
                      Expanded(
                        child: TabBarView(
                          children: List<Widget>.generate(
                            2,
                            (int index) => SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: AppTextInput(
                                        floatingLabel:
                                        'Ruhsat sahibi TC kimlik numarası',
                                        contentPadding:
                                        const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 8,
                                        ),
                                        keyboardType: TextInputType.phone,
                                        leading: Container(
                                          color: const Color(0xFFe4e7ec),
                                          width: 50,
                                          height: 50,
                                          margin:
                                          const EdgeInsets.only(right: 10),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'TC',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColorDark,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    AppTextInput(
                                      placeholder: '0850 *** ** **',
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 8,
                                      ),
                                      keyboardType: TextInputType.phone,
                                      leading: Container(
                                        color: const Color(0xFFe4e7ec),
                                        width: 50,
                                        height: 50,
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        alignment: Alignment.center,
                                        child: Text(
                                          '+90',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .primaryColorDark,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 25),
                                    CheckboxText(text: 'Gizlilik Politikası ve Kullanıcı Sözleşmesi’ni okudum ve onaylıyorum.', value: policyChecked, onChange: (bool? p) => setState(() => policyChecked = p ?? false)),
                                    CheckboxText(text: 'Aydınlatma Metni’ni okudum.', value: illuminationChecked, onChange: (bool? p) => setState(() => illuminationChecked = p ?? false)),
                                    CheckboxText(text: 'Yenilikler ve kampanyalar hakkında e-bülten ve sms almak istiyorum.', value: receiveSmsChecked, onChange: (bool? p) => setState(() => receiveSmsChecked = p ?? false)),
                                    const SizedBox(height: 20),
                                    AppButton(
                                      text: 'Teklif Al',
                                      color: Color(0xFF1ab759),
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                          EvcilEnterInfo.routeName,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
