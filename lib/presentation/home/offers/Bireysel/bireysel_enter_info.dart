import 'package:dijipol/presentation/home/offers/Bireysel/bireysel_request_received.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import '../../../../presentation/utils/constant.dart';

class BireyselEnterInfo extends StatefulWidget {
  static const String routeName = '/bireysel-enter-info';

  @override
  _BireyselEnterInfoState createState() => _BireyselEnterInfoState();
}

class _BireyselEnterInfoState extends State<BireyselEnterInfo> {
  int plakamRadio = 0;
  int currentStep = 0;

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
                  'Bireysel Sigortası',
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: AppTextInput(
                          floatingLabel: 'TC kimlik numarası / Vergi Numarası',
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
                          placeholder: '0850 *** ** **',
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
                    if (currentStep == 0 && plakamRadio == 1)
                      Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTextInput(
                            label: 'Eski Bireysel Poliçe Numaranız',
                            placeholder: '12342323',
                            fontSize: 14,
                          ),
                          SizedBox(height: 25),
                          Text('Bireysel Poliçe Numaramı Bilmiyorum' ,style: P16M),
                        ],
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
                            '03. Adres Seçimi',
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
                    if (currentStep == 2) SizedBox(height: 25),
                    if (currentStep == 2)
                      Column(
                        children: [
                          AppTextInput(
                            label: 'Boy',
                            floatingLabel: 'TC kimlik numarası / Vergi Numarası',
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
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Kilo',
                            floatingLabel: 'TC kimlik numarası / Vergi Numarası',
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
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Mevcut Sağlık Sigortanız var mı?',
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
                            label: 'Hangi Plan Tipi İstersiniz?',
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
                            label: 'Sağlık teklifinizde Amerikan Hastanesi İsteniyor mu?',
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
                            label: 'Acıbadem, Florence Nightangle gibi hastaneleri dahil edelim mi?',
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
                            label: 'Ayakta tedaviyi kişi başı limitli mi limitsiz mi çalışalım?',
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
                            label: 'Doğum teminatı isteniyor mu?',
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
                            label: 'Yurtdışı tedavi teminatı isteniyor mu?',
                            readOnly: true,
                            initialValue: 'Seçiniz',
                            fontSize: 14,
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                          ),
                        ],
                      ),
                    if (currentStep == 2) const SizedBox(height: 25),
                    if (currentStep == 2)
                      AppButton(
                        text: 'Devam Et',
                         disabled: false,
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(BireyselRequestReceived.routeName);
                          setState(() {
                            currentStep = 3;
                          });
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
