import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../presentation/utils/constant.dart';

class ZorunluViewOffer extends StatefulWidget {
  static const routeName = '/zorunlu-presentation-offer';

  @override
  _ZorunluViewOfferState createState() => _ZorunluViewOfferState();
}

class _ZorunluViewOfferState extends State<ZorunluViewOffer> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
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
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
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
                    color: Theme.of(context).primaryColor,
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
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: Text(
                  'Bilgileri Gir',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Size En Uygun Zorunlu Sigortası Teklifleri',
                        style: D16B,
                      ),
                    ),
                    SizedBox(height: 17),
                    OffersItem2(
                        title:
                            'Sizin için bulduğumuz tüm teklifler hazır. En pahalı ve en ucuz teklif arasında %0 fiyat avantajı bulunuyor',
                        icon: Icon(Icons.pie_chart),
                        backColor: primaryColorDark),
                    SizedBox(height: 21),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(17),
                              color: inputBG,
                              child: Text(
                                'Tüm Paketler(18)',
                                style: L16R,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 33),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: ViewOffersItem(
                        title: 'Zorunlu Sigortası',
                        subtitle: 'Standart Teminatlı Ürün',
                        installment: '412,15 TL X 3 Taksit',
                        subinstallment: 'S1.311,25 TL',
                        onButtonTap: () {},
                        onChange: (val) {
                          setState(() {
                            switchValue = val;
                          });
                        },
                        switchvalue: this.switchValue,
                        bordercolor: primaryColor,
                        headerVisible: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: ViewOffersItem(
                        title: 'Zorunlu Sigortası',
                        subtitle: 'Standart Teminatlı Ürün',
                        installment: '412,15 TL X 3 Taksit',
                        subinstallment: 'S1.311,25 TL',
                        onButtonTap: () {},
                        onChange: (val) {
                          setState(() {
                            switchValue = val;
                          });
                        },
                        switchvalue: this.switchValue,
                        bordercolor: Color(0xFFe4e7ec),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
