import 'package:dijipol/presentation/home/offers/Arac/arac_view_offer.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import '../../../../presentation/utils/constant.dart';

class AracEnterInfo extends StatefulWidget {
  static const String routeName = '/arac-enter-info';

  @override
  _AracEnterInfoState createState() => _AracEnterInfoState();
}

class _AracEnterInfoState extends State<AracEnterInfo> {
  int plakamRadio = 0;
  int currentStep = 0;
  bool policyChecked = false;

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
                  '2. El Araç Sig.',
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
                            '2. El Araç Sigortası',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (currentStep == 0) const SizedBox(height: 20),
                    if (currentStep == 0)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  RadioText<int>(value: 0, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Hususi Otomobil'),
                                ],
                              ),
                              Row(
                                children: [
                                  RadioText<int>(value: 1, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Kapalı Kasa Kamyonet'),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 25),
                          Text('SATICI BİLGİLERİ',style: L12M),
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Satıcı TC Kimlik No',
                            placeholder: 'Ruhsat sahibi TC kimlik numarası',
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
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Satıcı Cep Telefonu',
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
                          AppTextInput(
                            label: 'Satıcı E-posta',
                            placeholder: 'örnek@gmail.com',
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
                                '@',
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
                          AppTextInput(
                            label: 'Satıcı TC Kimlik No',
                            placeholder: '34 ABC 34 34',
                            contentPadding:
                            const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            keyboardType: TextInputType.phone,
                            leading: Container(
                              color: primaryColor,
                              width: 50,
                              height: 50,
                              margin:
                              const EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              child: Text(
                                'TR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Ruhsat',
                            placeholder: 'Yazınız',
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
                                'RST',
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
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: AppTextInput(
                                  label: 'Kilometre',
                                  readOnly: true,
                                  initialValue: 'Yazınız',
                                  fontSize: 14,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                  leading: Container(
                                    color: Color(0xFF2ac769),
                                    width: 50,
                                    height: 50,
                                    margin:
                                    const EdgeInsets.only(right: 10),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'TR',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: AppTextInput(
                                  label: 'Silindir Hacmi',
                                  readOnly: true,
                                  initialValue: 'Seçiniz',
                                  fontSize: 14,
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Text('ALICI BİLGİLERİ',style: L12M),
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Alıcı TC Kimlik No',
                            placeholder: ' TC kimlik numarası',
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
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Alıcı Cep Telefonu',
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
                          AppTextInput(
                            label: 'Satış Tarihi',
                            floatingLabel: 'Seçiniz',
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          SizedBox(height: 25),
                          Text('ALICI BİLGİLERİ',style: L12M),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'Araç Model Yılı', initialtext1: 'Seçiniz', labeltext2: 'Araç Markası', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Araç Modeli',
                            floatingLabel: 'Seçiniz',
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          SizedBox(height: 25),
                          Container(
                              decoration: BoxDecoration(
                                color:  Theme.of(context).primaryColor,
                                // borderRadius: BorderRadius.circular(200),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap:  null,
                                  highlightColor: Colors.transparent,
                                  child: Container(
                                    color: primaryGreen,
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.search_rounded,color: Colors.white),
                                        SizedBox(width: 14),
                                        Text(
                                          'Araç Sorgula',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize:  16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(height: 25),
                          Text('ALICI BİLGİLERİ',style: L12M),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'Başlangıç Tarihi', initialtext1: 'Seçiniz', labeltext2: 'Poliçe Süresi', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'TSE Belge No', initialtext1: 'Yazınız', labeltext2: 'Ekspertiz Rapor No', initialtext2: 'Yazınız'),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'Ekspertiz Tarihi', initialtext1: 'Seçiniz', labeltext2: 'Yakıt Tipi', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Ekspertiz Raporu Yükle',
                            floatingLabel: 'Yazınız',
                            contentPadding: EdgeInsets.only(left: 16),
                            trailing:Container(
                              color: Color(0xFF2ac769),
                              height: 50,
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SizedBox(width: 18),
                                  Icon(Icons.cloud,color: Colors.white),
                                  SizedBox(width: 8),
                                  Text(
                                    'Yükle',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 18),
                                ],
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Not',
                            floatingLabel: 'Yazınız',
                            contentPadding: EdgeInsets.only(left: 16),
                            trailing:Container(
                              color: Color(0xFF2ac769),
                              height: 50,
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SizedBox(width: 18),
                                  Icon(Icons.cloud,color: Colors.white),
                                  SizedBox(width: 8),
                                  Text(
                                    'Yükle',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 18),
                                ],
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'Vites Tipi', initialtext1: 'Seçiniz', labeltext2: 'Çekiş Tipi', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Checkbox(
                                value: policyChecked,
                                onChanged: (bool? p) => setState(() {
                                  policyChecked = p ?? false;
                                }),
                                activeColor:
                                Theme.of(context).primaryColor,
                              ),
                              Flexible(
                                child: Text(
                                  'Gizlilik Politikası ve kullanıcı sözleşmesi aydınlatma metni, Yenilikler ve kampanyalar hakkında e-bülten ve sms almak istiyorum',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .primaryColorDark),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (currentStep == 0) const SizedBox(height: 20),if (currentStep == 0)
                      AppButton(
                        text: 'Devam Et',
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AracViewOffer.routeName);
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
