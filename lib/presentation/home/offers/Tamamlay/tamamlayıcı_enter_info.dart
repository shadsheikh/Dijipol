import 'package:dijipol/presentation/home/offers/Tamamlay/tamamlay%C4%B1c%C4%B1_view_offer.dart';
import 'package:dijipol/presentation/home/offers/Tamamlay/tamamlayıcı_request_received.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import '../../../../presentation/utils/constant.dart';

class TamamlayEnterInfo extends StatefulWidget {
  static const String routeName = '/tamamlay-enter-info';

  @override
  _TamamlayEnterInfoState createState() => _TamamlayEnterInfoState();
}

class _TamamlayEnterInfoState extends State<TamamlayEnterInfo> {
  int plakamRadio = 0;
  int currentStep = 0;
  bool? doKnowRadioStep3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 20,
          left: 25,
          right: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                  'T. Sağlık Sigortası',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                Container(
                  color: Theme.of(context).primaryColor,
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  child: const Text(
                    '01',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Expanded(
                  child: Divider(
                    color: Color(0xFFbbc3cf),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  color: const Color(0xFFbbc3cf),
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  child: const Text(
                    '02',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Expanded(
                  child: Divider(
                    color: Color(0xFFbbc3cf),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  color: const Color(0xFFbbc3cf),
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  child: const Text(
                    '03',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                'Bilgileri Gir',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Divider(color: Color(0xFFbbc3cf)),
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '01. Kimlik No ve Cep Telefonu',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        if (currentStep > 0) const SizedBox(width: 30),
                        if (currentStep > 0)
                          InkWell(
                            onTap: () => setState(() => currentStep = 0),
                            child: Text(
                              'Güncelle',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (currentStep == 0) const SizedBox(height: 20),
                    if (currentStep == 0)
                      Row(
                        children: <Widget>[
                          RadioText<int>(value: 0, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Kendim'),
                          RadioText<int>(value: 1, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Ailem'),
                          RadioText<int>(value: 3, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Çocuğum'),
                        ],
                      ),
                    if (currentStep == 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: AppTextInput(
                          floatingLabel: 'Ruhsat sahibi TC kimlik numarası',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          keyboardType: TextInputType.phone,
                          leading: Container(
                            color: const Color(0xFFe4e7ec),
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.only(right: 10),
                            alignment: Alignment.center,
                            child: Text(
                              'TC',
                              style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (currentStep == 0)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          child: AppTextInput(
                            placeholder: '0850 ** * **',
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            keyboardType: TextInputType.phone,
                            leading: Container(
                              color: const Color(0xFFe4e7ec),
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              child: Text(
                                '+90',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                    if (currentStep == 0) const SizedBox(height: 20),
                    if (currentStep == 0)
                      AppButton(
                        text: 'Devam Et',
                        onTap: () {
                          setState(() {
                            currentStep = 1;
                          });
                        },
                      ),
                    const SizedBox(height: 20),
                    const Divider(color: Color(0xFFe4e7ec)),
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '02. Sigortalı Bilgileri',
                            style: TextStyle(
                              color: currentStep >= 1
                                  ? Theme.of(context).primaryColorDark
                                  : Theme.of(context).primaryColorLight,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        if (currentStep > 1) const SizedBox(width: 30),
                        if (currentStep > 1)
                          InkWell(
                            onTap: () => setState(() => currentStep = 1),
                            child: Text(
                              'Güncelle',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (currentStep == 1) const SizedBox(height: 20),
                    if (currentStep == 1)
                      const AppTextInput(
                        label: 'Adınız (Opsiyonel)',
                        placeholder: 'Yazınız',
                        fontSize: 14,
                      ),
                    if (currentStep == 1) const SizedBox(height: 20),
                    if (currentStep == 1)
                      const AppTextInput(
                        label: 'Soyadınız (Opsiyonel)',
                        placeholder: 'Yazınız',
                        fontSize: 14,
                      ),
                    if (currentStep == 1) const SizedBox(height: 20),
                    if (currentStep == 1)
                    DualAppTextInput(labeltext1: 'İl', initialtext1: 'Seçiniz', labeltext2: 'İlçe', initialtext2: 'Seçiniz'),
                    if (currentStep == 1) const SizedBox(height: 20),
                    if (currentStep == 1)
                      const AppTextInput(
                        label: 'Doğum Tarihi',
                        readOnly: true,
                        initialValue: 'Seçiniz',
                        fontSize: 14,
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    if (currentStep == 1) const SizedBox(height: 20),
                    if (currentStep == 1)
                      AppButton(
                        text: 'Devam Et',
                        onTap: () {
                          setState(() {
                            currentStep = 2;
                          });
                        },
                      ),
                    const SizedBox(height: 20),
                    const Divider(color: Color(0xFFe4e7ec)),
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '03. Poliçe Bilgileri',
                            style: TextStyle(
                              color: currentStep >= 2
                                  ? Theme.of(context).primaryColorDark
                                  : Theme.of(context).primaryColorLight,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        if (currentStep > 2) const SizedBox(width: 30),
                        if (currentStep > 2)
                          InkWell(
                            onTap: () => setState(() => currentStep = 2),
                            child: Text(
                              'Güncelle',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (currentStep == 2) const SizedBox(height: 20),
                    if (currentStep == 2)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vadesi biten poliçeniz var mı?',
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            RadioText<bool>(value: true, groupvalue: doKnowRadioStep3, onChange: (i) => setState(()=>doKnowRadioStep3 = i),text:'Evet Var'),
                            RadioText<bool>(value: false, groupvalue: doKnowRadioStep3, onChange: (i) => setState(()=>doKnowRadioStep3 = i),text:'Hayır Yok'),
                          ],
                        ),
                      ],
                    ),
                    if (currentStep == 2) const SizedBox(height: 20),
                    if (currentStep == 2)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mevcut Sağlık Poliçeniz var mı?',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  RadioText<int>(value: 0, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'İlk kez yaptıracağım'),
                                ],
                              ),
                              Row(
                                children: [
                                  RadioText<int>(value: 1, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Daha önceden poliçem var'),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          DualAppTextInput(labeltext1: 'Boyunuz (cm)', initialtext1: 'Seçiniz', labeltext2: 'Kilonuz (kg)', initialtext2: 'Seçiniz'),
                        ],
                      ),
                    if (currentStep == 2) const SizedBox(height: 20),
                    if (currentStep == 2)
                      Column(
                        children: [
                          SizedBox(height: 25),
                          AppTextInput(
                              label: 'Adınız (Opsiyonel)',
                              placeholder: 'Yazınız',
                              fontSize: 14,
                            ),
                          SizedBox(height: 25),
                          AppTextInput(
                              label: 'Soyadınız (Opsiyonel)',
                              placeholder: 'Yazınız',
                              fontSize: 14,
                            ),
                          SizedBox(height: 25),
                          AppTextInput(
                              label: 'Cep Telefonu Numaranız',
                              placeholder: '0850 ** * **',
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                              keyboardType: TextInputType.phone,
                              leading: Container(
                                color: const Color(0xFFe4e7ec),
                                width: 50,
                                height: 50,
                                margin: const EdgeInsets.only(right: 10),
                                alignment: Alignment.center,
                                child: Text(
                                  '+90',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(height: 25),
                          AppTextInput(
                              label: 'Cep Telefonu Numaranız',
                              placeholder: '0850 ** * **',
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                              keyboardType: TextInputType.phone,
                              leading: Container(
                                color: const Color(0xFFe4e7ec),
                                width: 50,
                                height: 50,
                                margin: const EdgeInsets.only(right: 10),
                                alignment: Alignment.center,
                                child: Text(
                                  '@',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'İl', initialtext1: 'Seçiniz', labeltext2: 'İlçe', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          AppTextInput(
                              label: 'Doğum Tarihi',
                              readOnly: true,
                              initialValue: 'Seçiniz',
                              fontSize: 14,
                              suffixIcon: Icon(Icons.keyboard_arrow_down),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Sigorta Ettirenin TC Kimlik No',
                            placeholder: 'Yazınız',
                            fontSize: 14,
                          ),
                          SizedBox(height: 25),
                        ],
                      ),
                    if (currentStep == 2) const SizedBox(height: 20),
                    if (currentStep == 2)
                      AppButton(
                        text: 'Devam Et',
                        // disabled: doKnowRadioStep2 == null,
                        onTap: () {
                          setState(() {
                            currentStep = 3;
                              Navigator.of(context)
                                  .pushNamed(TamamlayRequestReceived.routeName);
                          });
                        },
                      ),
                    const SizedBox(height: 20),
                    const Divider(color: Color(0xFFe4e7ec)),
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '04. Aile Bilgileri',
                            style: TextStyle(
                              color: currentStep >= 3
                                  ? Theme.of(context).primaryColorDark
                                  : Theme.of(context).primaryColorLight,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        if (currentStep > 3) const SizedBox(width: 30),
                        if (currentStep > 3)
                          InkWell(
                            onTap: () => setState(() => currentStep = 3),
                            child: Text(
                              'Güncelle',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (currentStep == 3) const SizedBox(height: 20),
                    if (currentStep == 3)
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const SizedBox(height: 20),
                           DualAppTextInput(labeltext1: 'Birey', initialtext1: 'Seçiniz', labeltext2: 'TC kimlik Numarası', initialtext2: 'Seçiniz'),
                           const SizedBox(height: 20),
                           DualAppTextInput(labeltext1: 'Boy (cm)', initialtext1: 'Seçiniz', labeltext2: 'Kilo (kg)', initialtext2: 'Seçiniz'),
                           const SizedBox(height: 20),
                           Icon(Icons.delete,color: primaryColor),
                           const SizedBox(height: 40),
                           Row(
                             children: [
                               Icon(Icons.add_circle_outline,color: primaryColor),
                               SizedBox( width: 10),
                               Text('Yeni Birey Ekle',style: P18S,)
                             ],
                           ),
                         ],
                       ),
                    if (currentStep == 3) const SizedBox(height: 20),
                    if (currentStep == 3)
                      AppButton(
                        text: 'Devam Et',
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(TamamlayViewOffer.routeName);
                        },
                      ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
