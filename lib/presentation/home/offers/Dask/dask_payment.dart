import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:dijipol/presentation/utils/constant.dart';

class DaskPayment extends StatefulWidget {
  static const routeName = '/dask-payment';

  @override
  _DaskPaymentState createState() => _DaskPaymentState();
}

class _DaskPaymentState extends State<DaskPayment> {
  int radioValue = 1;
  bool policyChecked = false;

  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;


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
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset('lib/assets/images/logo_banner1.png',
                      width: 128, height: 50),
                ),
                const Spacer(),
                Text(
                  'Dask Sigortası',
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
                  color: primaryColor,
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
                  color: primaryColor,
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
            const SizedBox(height: 15),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  const SizedBox(height: 31),
                  Text('Trafik Sigorta Poliçeniz', style: D18M),
                  const SizedBox(height: 13),
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/images/Aklogo.png',
                        width: 115,
                        height: 57,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zorunlu Trafik Sigortası',
                            style: D16M,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Standart Teminatlı Ürün',
                            style: D12R,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text('2.380,80 TL', style: P24M),
                      SizedBox(width: 12),
                      Text('Peşin Fiyat', style: L12R),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Divider(),
                  const SizedBox(height: 24),
                  Text('Kredi Kartı Bilgileri', style: D18M),
                  const SizedBox(height: 16),
                  AppTextInput(
                    label: 'Adınız (Opsiyonel)',
                    placeholder: 'Yazınız',
                    fontSize: 14,
                  ),
                  const SizedBox(height: 25),
                  AppTextInput(
                    label: 'Adınız (Opsiyonel)',
                    placeholder: 'Yazınız',
                    fontSize: 14,
                  ),
                  const SizedBox(height: 23),
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: AppTextInput(
                          label: 'İl',
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
                      SizedBox(width: 16),
                      Expanded(
                        child: AppTextInput(
                          label: 'İlçe',
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
                  const SizedBox(height: 25),
                  const SizedBox(height: 24),
                  Divider(),
                  const SizedBox(height: 24),
                  Text('   Taksit Seçenekleri', style: P16M),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: Text('   Taksit Sayısı',style: D16M),),
                      SizedBox(
                        width: width / 4,
                        child: Text('Aylık',style: D16M),
                      ),
                      SizedBox(
                        width: width / 4,
                        child: Text('Toplam',style: D16M),
                      ),
                    ],
                  ),
                  Divider(),
                  TableRow(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (int? val) {
                        setState(() {
                          radioValue = val ?? radioValue;
                        });
                      },
                      text1: 'Peşin',
                      text2: '2.380,80 TL',
                      text3: '2.380,80 TL'),
                  TableRow(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (int? val) {
                        setState(() {
                          radioValue = val ?? radioValue;
                        });
                      },
                      text1: 'Peşin',
                      text2: '2.380,80 TL',
                      text3: '2.380,80 TL'),
                  TableRow(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (int? val) {
                        setState(() {
                          radioValue = val ?? radioValue;
                        });
                      },
                      text1: 'Peşin',
                      text2: '2.380,80 TL',
                      text3: '2.380,80 TL'),
                  TableRow(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (int? val) {
                        setState(() {
                          radioValue = val ?? radioValue;
                        });
                      },
                      text1: 'Peşin',
                      text2: '2.380,80 TL',
                      text3: '2.380,80 TL'),
                  TableRow(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (int? val) {
                        setState(() {
                          radioValue = val ?? radioValue;
                        });
                      },
                      text1: 'Peşin',
                      text2: '2.380,80 TL',
                      text3: '2.380,80 TL'),
                  TableRow(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (int? val) {
                        setState(() {
                          radioValue = val ?? radioValue;
                        });
                      },
                      text1: 'Peşin',
                      text2: '2.380,80 TL',
                      text3: '2.380,80 TL'),
                  TableRow(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (int? val) {
                        setState(() {
                          radioValue = val ?? radioValue;
                        });
                      },
                      text1: 'Peşin',
                      text2: '2.380,80 TL',
                      text3: '2.380,80 TL'),
                  TableRow(
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (int? val) {
                        setState(() {
                          radioValue = val ?? radioValue;
                        });
                      },
                      text1: 'Peşin',
                      text2: '2.380,80 TL',
                      text3: '2.380,80 TL'),
                  Row(
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
                          'Poliçe Bilgilendirme formu’nu okudum.',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .primaryColorDark),
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
                        activeColor:
                        Theme.of(context).primaryColor,
                      ),
                      Flexible(
                        child: Text(
                          'Poliçe Bilgilendirme formu’nu okudum.',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .primaryColorDark),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  AppButton(text: 'Ödemeyi Tamamla', onTap: (){}),
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                       boxShadow: [
                        BoxShadow(
                          color: Color (0x29000000),
                          blurRadius: 15 ,
                        )
                       ],
                    ),
                     child: Column(
                       children: [
                         AppTextInput(label: 'Referans Kodu',trailing: AppButton(text: 'Uygula',onTap: (){},),),
                       ],
                     ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 17),
                      Row(
                        children: [Image.asset(
                          'lib/assets/images/Aklogo.png',
                          width: 115,
                          height: 57,
                        ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Zorunlu Trafik Sigortası',
                                style: D16M,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'TN: 53208772',
                                style: D12R,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 9),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                               '412,15 TL X 3 Taksit',
                                style: L14M,
                              ),
                              SizedBox(height: 2),
                              Text(
                                '1.311,25 TL',
                                style: P14M,
                              ),
                            ],
                          ),
                          Spacer(),
                          AppButton(
                            text: 'Ödemeyi Tamamla',
                            onTap: (){},
                            fontSize: 15,
                            color: primaryColorDark,
                            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class TableRow extends StatelessWidget {
  final int value;
  final int groupValue;
  final void Function(int?) onChanged;
  final String text1;
  final String text2;
  final String text3;

  TableRow(
      {required this.value,
      required this.groupValue,
      required this.onChanged,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Radio(
                      value: this.value,
                      groupValue: this.groupValue,
                      onChanged: this.onChanged),
                  Text(text1,style: D16M ),
                ],
              ),
            ),
            SizedBox(
              width: width / 4,
              child: Text(text2,style: D16R),
            ),
            SizedBox(
              width: width / 4,
              child: Text(text3,style: D16R),
            ),
          ],
        ),
        // SizedBox(height: 15),
        Divider(),
      ],
    );
  }
}
