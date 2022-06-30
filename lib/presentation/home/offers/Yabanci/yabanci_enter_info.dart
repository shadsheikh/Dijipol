import 'package:dijipol/data/models/avenuestreet.dart';
import 'package:dijipol/data/models/buildingNumber.dart';
import 'package:dijipol/data/models/district.dart';
import 'package:dijipol/data/models/neighbourhood.dart';
import 'package:dijipol/data/models/provinces.dart';
import 'package:dijipol/data/models/town.dart';
import 'package:dijipol/data/repositories/avenuestreet_repositoy.dart';
import 'package:dijipol/data/repositories/buildingNumber_repository.dart';
import 'package:dijipol/data/repositories/district_repository.dart';
import 'package:dijipol/data/repositories/neighbourhood_repository.dart';
import 'package:dijipol/data/repositories/provinces_repository.dart';
import 'package:dijipol/data/repositories/town_repository.dart';
import 'package:dijipol/presentation/home/offers/Yabanci/yabanci_view_offer.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import '../../../../presentation/utils/constant.dart';

class YabanciEnterInfo extends StatefulWidget {
  static const String routeName = '/yabanci-enter-info';

  @override
  _YabanciEnterInfoState createState() => _YabanciEnterInfoState();
}

class _YabanciEnterInfoState extends State<YabanciEnterInfo> {
  int plakamRadio = 0;
  int currentStep = 0;

  String selectedProvince = 'select';
  List<Provinces> provinceData = [];
  bool provinceLoading = false;

  String selectedDistrict = 'select';
  bool districtLoading = false;
  List<District> districtdata = [];

  String selectedTown = 'select';
  bool townLoading = false;
  List<Town> towndata = [];

  String selectedNeighbourhood = 'select';
  bool neighbourhoodLoading = false;
  List<Neighbourhood> neighbourhooddata = [];

  String selectedAvenuestreet = 'select';
  bool avenuestreetLoading = false;
  List<Avenuestreet> avenuestreetdata = [];

  String selectedBuildingNumber = 'select';
  bool buildingNumberLoading = false;
  List<BuildingNumber> buildingNumberdata = [];

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

  void getTown() async {
    setState(() {
      townLoading = true;
    });
    final tpd = await TownRepository().town(countyId: selectedDistrict);
    setState(() {
      townLoading = false;
      towndata = tpd;
      selectedTown = 'select';
    });
  }

  void getNeighbourhood() async {
    setState(() {
      neighbourhoodLoading = true;
    });
    final tpd =
        await NeighbourhoodRepository().neighbourhood(townId: selectedTown);
    setState(() {
      neighbourhoodLoading = false;
      neighbourhooddata = tpd;
      selectedNeighbourhood = 'select';
    });
  }

  void getAvenuestreet() async {
    setState(() {
    avenuestreetLoading = true;
    });
    final tpd =
        await AvenuestreetRepository().avenuestreet(neighborhoodId: selectedNeighbourhood);
    setState(() {
      avenuestreetLoading = false;
      avenuestreetdata = tpd;
      selectedAvenuestreet = 'select';
    });
  }

  void getBuildingNumber() async {
    setState(() {
    buildingNumberLoading = true;
    });
    final tpd =
        await BuildingNumberRepository().buildingNumber(roadAndStreetId: selectedAvenuestreet);
    setState(() {
      buildingNumberLoading = false;
      buildingNumberdata = tpd;
      selectedBuildingNumber = 'select';
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
                  'Yabanci Trafik Sig.',
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
                            '01. Kişisel Bilgiler',
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
                          label: 'Adınız',
                          floatingLabel: 'Yazınız',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    if (currentStep == 0)
                      if (plakamRadio == 0)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          child: AppTextInput(
                            label: 'Soyadınız',
                            floatingLabel: 'Yazınız',
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                    if (currentStep == 0)
                      if (plakamRadio == 1)
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          child: AppTextInput(
                            floatingLabel: 'Yazınız',
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
                            label: 'Cep Telefonu Numaranız',
                            placeholder: 'Yazınız',
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            keyboardType: TextInputType.phone,
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
                            '02. Pasaport ve Kimlik Bilgileri',
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
                      Row(
                        children: const <Widget>[
                          Expanded(
                            child: AppTextInput(
                              label: 'Pasaport / kimlik No',
                              readOnly: true,
                              initialValue: 'Yazınız',
                              fontSize: 14,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: AppTextInput(
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
                          ),
                        ],
                      ),
                    if (currentStep == 1) const SizedBox(height: 20),
                    if (currentStep == 1)
                      Row(
                        children: const <Widget>[
                          Expanded(
                            child: AppTextInput(
                              label: 'Anne Adı',
                              readOnly: true,
                              initialValue: 'Yazınız',
                              fontSize: 14,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: AppTextInput(
                              label: 'Baba Adı',
                              readOnly: true,
                              initialValue: 'Yazınız',
                              fontSize: 14,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    if (currentStep == 1) const SizedBox(height: 20),
                    if (currentStep == 1)
                      DualAppTextInput(labeltext1: 'Doğum Tarihiniz', initialtext1: 'Seçiniz', labeltext2: 'Cinsiyetiniz', initialtext2: 'Seçiniz'),
                    if (currentStep == 1) const SizedBox(height: 20),
                    if (currentStep == 1)
                      AppTextInput(
                        label: 'Uyruk',
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.info_outline,color: Color(0xFFe93c3c)),
                              SizedBox(width: 11),
                              Flexible(
                                child: Text('18 yaşından küçüksünüz, lütfen ebeveyn bilgilerinizi girip öyle devam edin.',style: TextStyle(
                                  color: Color(0xFFe93c3c),
                                  fontSize: 14,fontWeight: FontWeight.w400,
                                ),),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Text('Ebeveyn Bilgisi',style: D16M),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'Pasaport / kimlik No', initialtext1: 'Seçiniz', labeltext2: 'Poliçe Başlangıç Tarihi', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'Adınız', initialtext1: 'Seçiniz', labeltext2: 'Soyadınız', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'Anne Adı', initialtext1: 'Seçiniz', labeltext2: 'Baba Adı', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          DualAppTextInput(labeltext1: 'Doğum Tarihiniz', initialtext1: 'Seçiniz', labeltext2: 'Cinsiyetiniz', initialtext2: 'Seçiniz'),
                          SizedBox(height: 25),
                          AppTextInput(
                            label: 'Uyruk',
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
                    if (currentStep == 1) const SizedBox(height: 25),
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
                            '03. Adres Bilgileri',
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
                        children: [
                          SizedBox(height: 25),
                          //DualAppTextInput(labeltext1: 'İl', initialtext1: 'Seçiniz', labeltext2: 'İlçe', initialtext2: 'Seçiniz'),
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
                                                    selectedTown = 'select';
                                                  });
                                                  getTown();
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
                          SizedBox(height: 25),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text('Belde',style: D14M)),
                                  SizedBox(width: 15),
                                  Expanded(child: Text('Mahalle',style: D14M)),
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
                                        child: townLoading
                                            ? Center(
                                                child: CircularProgressIndicator())
                                            : DropdownButton<String>(
                                                value: selectedTown,
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
                                                    selectedTown = newValue!;
                                                    selectedNeighbourhood = 'select';
                                                  });
                                                  getNeighbourhood();
                                                },
                                                items: [
                                                  DropdownMenuItem<String>(
                                                    value: 'select',
                                                    child: Text('Seçiniz'),
                                                  ),
                                                  ...towndata.map((e) =>
                                                      DropdownMenuItem<String>(
                                                        value: e.Code,
                                                        child: Text(e.Description),
                                                      )),
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
                                        child: neighbourhoodLoading
                                            ? Center(
                                                child: CircularProgressIndicator())
                                            : DropdownButton<String>(
                                                value: selectedNeighbourhood,
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
                                                    selectedNeighbourhood = newValue!;
                                                    selectedAvenuestreet = 'select';
                                                  });
                                                  getAvenuestreet();
                                                },
                                                items: [
                                                  DropdownMenuItem<String>(
                                                    value: 'select',
                                                    child: Text('Seçiniz'),
                                                  ),
                                                  ...neighbourhooddata.map((e) =>
                                                      DropdownMenuItem<String>(
                                                        value: e.Code,
                                                        child: Text(e.Description),
                                                      )),
                                                ],
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text('Cadde/Sokak Seç',style: D14M)),
                                  SizedBox(width: 15),
                                  Expanded(child: Text('Bina No',style: D14M)),
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
                                        child: avenuestreetLoading
                                            ? Center(
                                                child: CircularProgressIndicator())
                                            : DropdownButton<String>(
                                                value: selectedAvenuestreet,
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
                                                    selectedAvenuestreet = newValue!;
                                                    selectedBuildingNumber = 'select';
                                                  });
                                                  getBuildingNumber();
                                                },
                                                items: [
                                                  DropdownMenuItem<String>(
                                                    value: 'select',
                                                    child: Text('Seçiniz'),
                                                  ),
                                                  ...avenuestreetdata.map((e) =>
                                                      DropdownMenuItem<String>(
                                                        value: e.Code,
                                                        child: Text(e.Description),
                                                      )),
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
                                        child: buildingNumberLoading
                                            ? Center(
                                                child: CircularProgressIndicator())
                                            : DropdownButton<String>(
                                                value: selectedBuildingNumber,
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
                                                    selectedBuildingNumber = newValue!;
                                                    //selectedAvenuestreet = 'select';
                                                  });
                                                  //getAvenuestreet();
                                                },
                                                items: [
                                                  DropdownMenuItem<String>(
                                                    value: 'select',
                                                    child: Text('Seçiniz'),
                                                  ),
                                                  ...buildingNumberdata.map((e) =>
                                                      DropdownMenuItem<String>(
                                                        value: e.Code,
                                                        child: Text(e.Description),
                                                      )),
                                                ],
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
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
                        ],
                      ),
                    if (currentStep == 2) const SizedBox(height: 20),
                    if (currentStep == 2)
                      AppButton(
                        text: 'Devam Et',
                        onTap: () {Navigator.of(context)
                            .pushNamed(YabanciViewOffer.routeName);
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
