import 'package:dijipol/presentation/utils/constant.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class AracInsuranceOffer extends StatefulWidget {
  static const String routname = '/Arac-insurance-offer';
  @override
  _AracInsuranceOfferState createState() => _AracInsuranceOfferState();
}

class _AracInsuranceOfferState extends State<AracInsuranceOffer> {
  @override
  Widget build(BuildContext context) {
    bool receiveSmsChecked = false;

    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  '2. El Araç Sigortası',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CustomIcon(
                'car-hand',
                size: 40,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                '2. El Araç Sigorta Teklifiniz',
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 25),
            Image.asset(
              'lib/assets/images/Aklogo.png',
              width: 364,
              height: 116,
            ),
            Expanded(child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text('Sigortalı & Sigorta Ettiren Bilgileri: 12392393****',style: D14M),
                    SizedBox(height: 12),
                    Text('1.311,25 TL',style: P18M),
                    SizedBox(height: 8),
                    Text('412,15 TL X 3 Taksit',style: L14M),
                    SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: receiveSmsChecked,
                          onChanged: (bool? p) => setState(() {
                            receiveSmsChecked = p ?? false;
                          }),
                          activeColor:
                          Theme.of(context).primaryColor,
                        ),
                        Flexible(
                          child: Text(
                            'Poliçe Bilgilendirme Formu’nu okudum ve onaylıyorum.',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .primaryColorDark,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: receiveSmsChecked,
                          onChanged: (bool? p) => setState(() {
                            receiveSmsChecked = p ?? false;
                          }),
                          activeColor:
                          Theme.of(context).primaryColor,
                        ),
                        Flexible(
                          child: Text(
                            'Aydınlatma Metni’ni okudum.',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .primaryColorDark,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 23),
                    AppButton(
                      text: 'Teklif Al',
                      color: primaryGreen,
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
