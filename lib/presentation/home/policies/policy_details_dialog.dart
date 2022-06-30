import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import '../../../presentation/utils/constant.dart';

class PolicyDetailsDialog extends StatefulWidget {
  @override
  _PolicyDetailsDialogState createState() => _PolicyDetailsDialogState();
}

class _PolicyDetailsDialogState extends State<PolicyDetailsDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 23, vertical: 30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zorunlu trafik Sigortası',
                          style: D16M,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'AK Sigorta',
                          style: D12R,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Image.asset(
                    'lib/assets/images/Aklogo.png',
                    width: 100,
                    height: 50,
                  ),
                ],
              ),
              SizedBox(height: 12),
              Divider(),
              SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 15,
                      offset: Offset(0, 5),
                      color: Color(
                        0x29000000,
                      ),
                    ),
                    BoxShadow(
                      offset: const Offset(3, 3),
                      color: Color(0xFFfea403),
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 18,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RichText(text: TextSpan(children: [
                        TextSpan(text: 'Poliçe bedelim: ',style: D16R),
                        TextSpan(text: '3.700 TL',style: TextStyle(fontWeight: FontWeight.bold)),
                      ],style: D16R),),
                      RichText(text: TextSpan(children: [
                        TextSpan(text: 'Yenileme tarihim: ',style: D16R),
                        TextSpan(text: '27.08.2022',style: TextStyle(fontWeight: FontWeight.bold)),
                      ],style: D16R),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Ana teminatlar',style: D12B),
              SizedBox(height: 12),
              Divider(height: 1),
              Expanded(child: SingleChildScrollView(
                child: Column(
                  children: [
                    DualTextRow(text1: 'Maddi Hasar Araç Başına',text2: '41.000 TL'),
                    DualTextRow(text1: 'Maddi Hasar Kaza Başına',text2: '82.000 TL'),
                    DualTextRow(text1: 'Ölüm ve Sakatlanma Kişi Başına',text2: '410.000 TL'),
                    DualTextRow(text1: 'Ölüm ve Sakatlanma Kaza Başına',text2: '2.050.000 TL'),
                    DualTextRow(text1: 'Sağlık Gideri Kişi Başına',text2: '410.000 TL'),
                    DualTextRow(text1: 'Sağlık Gideri Kaza Başına',text2: '2.050.000 TL'),
                  ],
                ),
              ),),
              AppButton(text: 'Kapat', onTap: (){})
            ],
          ),
        ));
  }
}



