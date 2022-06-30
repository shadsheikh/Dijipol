import 'package:dijipol/presentation/home/offers/Dask/dask_payment.dart';
import 'package:dijipol/presentation/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../presentation/utils/constant.dart';

class DaskViewOffer extends StatefulWidget {
  static const routeName = '/dask-presentation-offer';

  @override
  _DaskViewOfferState createState() => _DaskViewOfferState();
}

class _DaskViewOfferState extends State<DaskViewOffer> {
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
                    'Dask Sigortası',
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
                  'Teklifleri İncele',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Size En Uygun Dask Sigortası Teklifleri',
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
                        onButtonTap: () {
                          Navigator.pushNamed(context, DaskPayment.routeName);
                        },
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
                        title: 'Dask Sigortası',
                        subtitle: 'Standart Teminatlı Ürün',
                        installment: '412,15 TL X 3 Taksit',
                        subinstallment: 'S1.311,25 TL',
                        onButtonTap: () {
                          Navigator.pushNamed(context, DaskPayment.routeName);
                        },
                        onChange: (val) {
                          setState(() {
                            switchValue = val;
                          });
                        },
                        switchvalue: this.switchValue,
                        bordercolor: Color(0xFFe4e7ec),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Color(0x29000000),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          )
                        ]),
                        padding: EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sigorta Bilgileriniz',
                              style: D16M,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            DualTextColumn(
                                text1: 'Adınız Soyadınız',
                                text2: 'Sinan Soylu'),
                            DualTextColumn(
                                text1: 'Mesken',
                                text2: 'Bu******* Mh. Me***** Sk\nNo. 12 Da.'),
                            GestureDetector(
                              onTap: () {},
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
                        ),
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
