import 'package:dijipol/data/models/district.dart';
import 'package:dijipol/data/models/provinces.dart';
import 'package:dijipol/data/repositories/district_repository.dart';
import 'package:dijipol/data/repositories/provinces_repository.dart';
import 'package:dijipol/presentation/home/offers/Zorunlu/zorunlu_view_offer.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import '../../../../presentation/utils/constant.dart';

class ZorunluEnterInfo extends StatefulWidget {
  static const String routeName = '/zorunlu-enter-info';

  @override
  _ZorunluEnterInfoState createState() => _ZorunluEnterInfoState();
}

class _ZorunluEnterInfoState extends State<ZorunluEnterInfo> {
  int plakamRadio = 0;
  int currentStep = 0;
  bool isStepThreeEditable = true;
  bool? doKnowRadioStep2;
  
  String selectedProvince = 'select';
  List<Provinces> provinceData = [];
  bool provinceLoading = false;

  String selectedDistrict = 'select';
  bool districtLoading = false;
  List<District> districtdata = [];

  @override
  void initState() {
    getProvinces();
    super.initState();
  }

  void getProvinces() async {
    setState(() {
      provinceLoading = true;
    });
    final tpd = await ProvincesRepository().provinces();
    setState(() {
      provinceLoading = false;
      selectedProvince = 'select';
      provinceData = tpd;
    });
  }

  void getDistricts() async {
    setState(() {
      districtLoading = true;
    });
    final tpd =
        await DistrictRepository().districts(citycode: selectedProvince);
    setState(() {
      districtLoading = false;
      districtdata = tpd;
      selectedDistrict = 'select';
    });
  }

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
                  'Zorunlu Trafik Sig.',
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
                            '01. Plaka, Kimlik ve Cep Telefonu',
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
                          RadioText<int>(value: 0, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Plakam Var'),
                          RadioText<int>(value: 1, groupvalue: plakamRadio, onChange: (i) => setState(()=>plakamRadio = i),text:'Plakam Var'),
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
                      if (plakamRadio == 0)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          child: AppTextInput(
                            floatingLabel: 'Plaka',
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            keyboardType: TextInputType.phone,
                            leading: Container(
                              color: const Color(0xFF3585f7),
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              child: const Text(
                                'TR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                    if (currentStep == 0)
                      if (plakamRadio == 1)
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          child: AppTextInput(
                            floatingLabel: 'Aracınızın Plaka İli',
                            readOnly: true,
                            initialValue: 'Seçiniz',
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
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
                    if (currentStep == 0) const SizedBox(height: 20),if (currentStep == 0)
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
                      Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text('İl',style: D14M)),
                                  SizedBox(width: 15),
                                  Expanded(child: Text('İlçe',style: D14M)),
                                ]
                              ),
                              Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 10,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 5),
                                        width: MediaQuery.of(context).size.width *
                                            0.35,
                                        decoration: BoxDecoration(
                                          color: Color(0xfff1f3f5),
                                        ),
                                        child: provinceLoading
                                            ? Center(
                                                child: CircularProgressIndicator())
                                            : DropdownButton<String>(
                                                value: selectedProvince,
                                                underline: SizedBox(),
                                                isExpanded: true,
                                                icon:
                                                    Icon(Icons.keyboard_arrow_down),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: const TextStyle(
                                                    color: Color(0XFF0f0d1a)),
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    selectedProvince = newValue!;
                                                    selectedDistrict = 'select';
                                                  });
                                                  getDistricts();
                                                },
                                                items: [
                                                  DropdownMenuItem<String>(
                                                    value: 'select',
                                                    child: Text('Seçiniz'),
                                                  ),
                                                  ...provinceData.map(
                                                    (e) => DropdownMenuItem<String>(
                                                      value: e.CityCode,
                                                      child: Text(e.CityName),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 10,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 5),
                                        width: MediaQuery.of(context).size.width *
                                            0.35,
                                        decoration: BoxDecoration(
                                          color: Color(0xfff1f3f5),
                                        ),
                                        child: districtLoading
                                            ? Center(
                                                child: CircularProgressIndicator())
                                            : DropdownButton<String>(
                                                value: selectedDistrict,
                                                underline: SizedBox(),
                                                isExpanded: true,
                                                icon:
                                                    Icon(Icons.keyboard_arrow_down),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: const TextStyle(
                                                    color: Color(0XFF0f0d1a)),
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    selectedDistrict = newValue!;
                                                    //selectedTown = 'select';
                                                  });
                                                  //getTown();
                                                },
                                                items: [
                                                  DropdownMenuItem<String>(
                                                    value: 'select',
                                                    child: Text('Seçiniz'),
                                                  ),
                                                  ...districtdata.map((e) =>
                                                      DropdownMenuItem<String>(
                                                        value: e.CountyCode,
                                                        child: Text(e.CountyName),
                                                      )),
                                                ],
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
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
                            '03. Ruhsat & Araç Bilgileri',
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
                        'Ruhsat Belge Seri Numaranızı Biliyor musunuz?',
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
                          RadioText<bool>(value: true, groupvalue: doKnowRadioStep2, onChange: (i) => setState(()=>doKnowRadioStep2 = i),text:'Evet biliyorum'),
                          RadioText<bool>(value: false, groupvalue: doKnowRadioStep2, onChange: (i) => setState(()=>doKnowRadioStep2 = i),text:'Hayır Bilmiyorum'),
                        ],
                      ),
                    if (currentStep == 2)
                      const SizedBox(height: 20),
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
                      Row(
                        children: const <Widget>[
                          Expanded(
                            child: AppTextInput(
                              label: 'Belge Seri',
                              initialValue: 'Giriniz',
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: AppTextInput(
                              label: 'Belge No',
                              initialValue: 'Giriniz',
                            ),
                          ),
                        ],
                      ),
                    if (currentStep == 2 && (doKnowRadioStep2 ?? false))
                      const SizedBox(height: 20),
                    if (currentStep == 2 && (doKnowRadioStep2 ?? false))
                      if (isStepThreeEditable)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: primaryColorDark,
                                ),
                                SizedBox(width: 16),
                                Flexible(
                                  child: Text(
                                    'Emniyet Genel Müdürlüğü’nde kayıtlı araç bilgileriniz, aşağıdadır, lütfen doğruluğunu kontrol edin',
                                    style: TextStyle(
                                      color: primaryColorDark,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            DualTextColumn(
                                text1: 'Ruhsat Tescil Tarihi',text2:  '21/1/2021'),
                            DualTextColumn(
                                text1: 'Kullanım Tarzı Tescil Tarihi',text2:  'Otomobil'),
                            DualTextColumn(text1: 'Marka',text2: 'Peugeot'),
                            DualTextColumn(text1: 'Plaka',text2:  '34 DRR 364'),
                            DualTextColumn(text1: 'Model Yılı',text2:  '2020'),
                            DualTextColumn(text1: 'Model',text2:
                                '308 Allure Sport 1.2 Puretech 130 S&S EAT8'),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isStepThreeEditable = false;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Düzenle',
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      else
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: primaryColorDark,
                                ),
                                SizedBox(width: 16),
                                Flexible(
                                  child: Text(
                                    'Araç bilgisi bulunamadı, lütfen araç bilgisini giriniz.',
                                    style: TextStyle(
                                      color: primaryColorDark,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    color: inputBG,
                                    child: Text('Gün'),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    color: inputBG,
                                    child: Text('Ay'),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    color: inputBG,
                                    child: Text('Yıl'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                AppTextInput(
                                  label: 'Kullanım Tarzı',
                                  readOnly: true,
                                  initialValue: 'Seçiniz',
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                SizedBox(height: 25),
                                AppTextInput(
                                  label: 'Kullanım Şekli',
                                  readOnly: true,
                                  initialValue: 'Ticari',
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                SizedBox(height: 25),
                                AppTextInput(
                                  label: 'Marka',
                                  readOnly: true,
                                  initialValue: 'Peugeot',
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                SizedBox(height: 25),
                                AppTextInput(
                                  label: 'Model Yılı',
                                  readOnly: true,
                                  initialValue: '2020',
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                SizedBox(height: 25),
                                AppTextInput(
                                  label: 'Model',
                                  readOnly: true,
                                  initialValue: 'ALLURE',
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    if (currentStep == 2) const SizedBox(height: 20),
                    if (currentStep == 2)
                      AppButton(
                        text: 'Devam Et',
                        disabled: doKnowRadioStep2 == null,
                        onTap: () {Navigator.of(context)
                            .pushNamed(ZorunluViewOffer.routeName);
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
