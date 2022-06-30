import 'package:dijipol/presentation/home/offers/Seyahat/seyahat_view_offer.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class SeyahatEnterInfo extends StatefulWidget {
  static const String routeName = '/seyahat-enter-info';

  @override
  _SeyahatEnterInfoState createState() => _SeyahatEnterInfoState();
}

class _SeyahatEnterInfoState extends State<SeyahatEnterInfo> {
  int plakamRadio = 0;
  int currentStep = 0;
  bool isStepThreeEditable = true;
  bool? doKnowRadioStep2;

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
                  'Seyahat Trafik Sig.',
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
                          RadioText<int>(value: 0, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Kimlik No'),
                          RadioText<int>(value: 1, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Pasaport/Yabancı Kimlik No'),
                        ],
                      ),
                    if (currentStep == 0)
                      if (plakamRadio == 0)
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
                      if (plakamRadio == 1)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          child: AppTextInput(
                              placeholder: 'Pasaport/Yabancı Kimlik No'),
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
                    if(currentStep == 1)
                    if(plakamRadio == 0)
                      Two(() { setState(() {
                      currentStep = 2;
                    },);},),
                    if(currentStep == 1)
                      if(plakamRadio == 1)
                        Two1(() { setState(() {
                          currentStep = 2;
                        },);},),
                    const SizedBox(height: 20),
                    const Divider(color: Color(0xFFe4e7ec)),
                    const SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '03. Seyahat Bilgileri',
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
                      Text(
                        'Covid teminatı istiyor musunuz?',
                        style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    if (currentStep == 2) const SizedBox(height: 20),
                    if (currentStep == 2)
                      Row(
                        children: <Widget>[
                          RadioText<bool>(value: true, groupvalue: doKnowRadioStep2, onChange: (i) => setState(()=>doKnowRadioStep2 = i),text:'Pasaport/Yabancı Kimlik No'),
                          RadioText<bool>(value: false, groupvalue: doKnowRadioStep2, onChange: (i) => setState(()=>doKnowRadioStep2 = i),text:'Hayır'),
                        ],
                      ),
                    if (currentStep == 2) const SizedBox(height: 20),
                    if (currentStep == 2 && !(doKnowRadioStep2 ?? true))
                      AppTextInput(
                        label: 'E-posta adresini yazın',
                        readOnly: true,
                        initialValue: 'sinan_soylu@live.nl',
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    if (currentStep == 2 && (doKnowRadioStep2 ?? false))
                      DualAppTextInput(labeltext1: 'Gidiş Tarihi', initialtext1: 'Seçiniz', labeltext2: 'Dönüş Tarihi', initialtext2: 'Seçiniz'),
                    if (currentStep == 2 && (doKnowRadioStep2 ?? false))
                      const SizedBox(height: 20),
                    if (currentStep == 2 && (doKnowRadioStep2 ?? false))
                      if (isStepThreeEditable)
                        DualAppTextInput(labeltext1: 'Gidilecek Ülke', initialtext1: 'Seçiniz', labeltext2: 'Coğrafi Saha Alanı', initialtext2: 'Seçiniz'),
                    if (currentStep == 2 )
                      const SizedBox(height: 25),
                    if (currentStep == 2 )
                    AppButton(
                      text: 'Devam Et',
                      disabled: doKnowRadioStep2 == null,
                      onTap: () {
                        if (plakamRadio == 0)
                          Navigator.of(context)
                              .pushNamed(SeyahatViewOffer.routeName);
                        else
                        setState(() {
                          currentStep = 3;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    if(plakamRadio == 1)
                    const Divider(color: Color(0xFFe4e7ec)),
                    const SizedBox(height: 20),
                    if(plakamRadio == 1)
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '04. Diğer Özellikler',
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
                    if(plakamRadio == 1)
                    if (currentStep == 3) const SizedBox(width: 30),
                    if(plakamRadio == 1)
                    if (currentStep == 3)
                      Four(() {
                        Navigator.of(context)
                            .pushNamed(SeyahatViewOffer.routeName);
                      },
                      ),
                    SizedBox(height: 20),
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

class Two extends StatelessWidget {

  final void Function() onTap;

  Two(this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
            const AppTextInput(
              label: 'Adınız (Opsiyonel)',
              placeholder: 'Yazınız',
              fontSize: 14,
            ),
         SizedBox(height: 20),
            const AppTextInput(
              label: 'Soyadınız (Opsiyonel)',
              placeholder: 'Yazınız',
              fontSize: 14,
            ),
          SizedBox(height: 20),

          DualAppTextInput(labeltext1: 'İl', initialtext1: 'Seçiniz', labeltext2: 'İlçe', initialtext2: 'Seçiniz'),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
            AppButton(
              text: 'Devam Et',
              onTap: onTap,
            ),
        ],
      ),
    );
  }
}
class Two1 extends StatelessWidget {

  final void Function() onTap;

  Two1(this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          const AppTextInput(
            label: 'Pasaport No / Kimlik No',
            placeholder: 'Yazınız',
            fontSize: 14,
          ),
          SizedBox(height: 20),
          const AppTextInput(
            label: 'Poliçe Başlangıç Tarihi',
            readOnly: true,
            initialValue: 'Seçiniz',
            fontSize: 14,
            suffixIcon: Icon(Icons.keyboard_arrow_down),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
          SizedBox(height: 20),
          const AppTextInput(
            label: 'Adınız',
            placeholder: 'Yazınız',
            fontSize: 14,
          ),
          SizedBox(height: 20),
          const AppTextInput(
            label: 'Soyadınız',
            placeholder: 'Yazınız',
            fontSize: 14,
          ),
          SizedBox(height: 20),
          const AppTextInput(
            label: 'Anne Adı',
            placeholder: 'Yazınız',
            fontSize: 14,
          ),
          SizedBox(height: 20),
          const AppTextInput(
            label: 'Baba Adı',
            placeholder: 'Yazınız',
            fontSize: 14,
          ),
          SizedBox(height: 20),
          DualAppTextInput(labeltext1: 'Doğum Tarihiniz', initialtext1: 'Seçiniz', labeltext2: 'Cinsiyetiniz', initialtext2: 'Seçiniz'),
          SizedBox(height: 20),
          DualAppTextInput(labeltext1: 'İl', initialtext1: 'Seçiniz', labeltext2: 'İlçe', initialtext2: 'Seçiniz'),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          AppButton(
            text: 'Devam Et',
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
class Four extends StatelessWidget {
  final void Function() onTap;

  Four(this.onTap);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 25),
          DualAppTextInput(labeltext1: 'İl', initialtext1: 'Seçiniz', labeltext2: 'İlçe', initialtext2: 'Seçiniz'),
          SizedBox(height: 25),
          DualAppTextInput(labeltext1: 'Belde', initialtext1: 'Seçiniz', labeltext2: 'Mahalle', initialtext2: 'Seçiniz'),
          SizedBox(height: 25),
          DualAppTextInput(labeltext1: 'Cadde/Sokak Seç', initialtext1: 'Seçiniz', labeltext2: 'Bina No', initialtext2: 'Seçiniz'),
          SizedBox(height: 25),
          AppTextInput(
            label: 'Kapı No',
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
          AppButton(
            text: 'Devam Et',
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}


// if (currentStep == 3) const SizedBox(height: 20),
// if (currentStep == 3),