import 'package:dijipol/presentation/home/support/branches.dart';
import 'package:dijipol/presentation/home/support/faq.dart';
import 'package:dijipol/presentation/home/support/query_insurance_value.dart';
import 'package:dijipol/presentation/home/support/submit_claim.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  static const String routeName = '/support-screen';

  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  bool contractOpen = false;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 2, color: Color(0x11000000))),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).padding.top + 20),
          Row(
            children: <Widget>[
              const SizedBox(width: 20),
              Image.asset(
                'lib/assets/images/logo_banner.png',
                width: width / 3,
                fit: BoxFit.scaleDown,
              ),
              const Spacer(),
              Text(
                'S. SOYLU',
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      'Destek',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (_) => Dialog(
                          shape: const RoundedRectangleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const SizedBox(height: 16),
                                Text(
                                  'Arama Yap',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  '0850 433 0850 aranıyor. Emin misiniz?',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorLight,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: AppButton(
                                        text: 'Evet',
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                    Expanded(
                                      child: AppButton(
                                        text: 'Hayır',
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 16,
                                          horizontal: 18,
                                        ),
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        textColor:
                                            Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.phone_in_talk_outlined,
                            color: Colors.white,
                            size: 50,
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                '7/24 Uzmanından Destek',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '850 433 0850',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                              Text(
                                'HEMEN Aramak için Dokunun',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorDark,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      'Biz sizi arayalım',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        contractOpen = !contractOpen;
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            blurRadius: 6,
                            color: Color(0x29000000),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Sözleşmeler',
                            // 'Biz sizi arayalım',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          if (contractOpen)
                            Icon(
                              Icons.keyboard_arrow_up,
                              color: Theme.of(context).primaryColorDark,
                            )
                          else
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Theme.of(context).primaryColorDark,
                            ),
                        ],
                      ),
                    ),
                  ),
                  if (contractOpen)
                    const SupportScreenItem(
                      text: 'KVKK Hakkında Bilgilendirme',
                      backgroundColor: Color(0xFFF1F3F5),
                    ),
                  if (contractOpen)
                    const SupportScreenItem(
                      text: 'Açık Rıza Metni',
                      backgroundColor: Color(0xFFF1F3F5),
                    ),
                  if (contractOpen)
                    const SupportScreenItem(
                      text:
                          'Gizlilik, Kullanım Koşulları ve Kullanıcı Sözleşmesi',
                      backgroundColor: Color(0xFFF1F3F5),
                    ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Branches.routeName);
                    },
                    child: const SupportScreenItem(text: 'Şubelerimiz'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(SubmitClaim.routeName);
                    },
                    child: const SupportScreenItem(text: 'Hasar Talebi Gönder'),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const SupportScreenItem(text: 'Mobil kaza tutanağı'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(QueryInsuranceValue.routeName);
                    },
                    child:
                        const SupportScreenItem(text: 'Kasko Değeri sorgula'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Faq.routeName);
                    },
                    child:
                        const SupportScreenItem(text: 'Sıkça Sorulan Sorular'),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SupportScreenItem extends StatelessWidget {
  const SupportScreenItem({required this.text, this.backgroundColor});

  final String text;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            blurRadius: 6,
            color: Color(0x29000000),
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: Theme.of(context).primaryColorDark,
          ),
        ],
      ),
    );
  }
}
