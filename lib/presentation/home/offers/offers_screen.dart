import 'package:dijipol/presentation/home/offers/Arac/arac_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Bireysel/bireysel_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Cep/cep_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Evcil/evcil_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Konut/konut_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Seyahat/seyahat_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Tamamlay/tamamlay%C4%B1c%C4%B1_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Yabanci/yabanci_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Zorunlu/zorunlu_home_screen.dart';
import 'package:dijipol/presentation/home/offers/kasko/kasko_home_screen.dart';
import 'package:dijipol/presentation/home/offers/Dask/dask_home_screen.dart';
import 'package:dijipol/presentation/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  static const String routeName = '/offers-screen';

  @override
  Widget build(BuildContext context) {
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
              Text(
                'Teklif Al',
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25 - 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    OffersItem(
                      title: 'Kasko',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          KaskoHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('steering'),
                      backColor: const Color(0xFFe1251b),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'Z. Trafik Sigortası',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          ZorunluHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('car'),
                      backColor: const Color(0xFF0aa0df),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'Dask',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          DaskHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('heart-beat'),
                      backColor: const Color(0xFFfea403),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'Konut Sigortası',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          KnoutHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('house'),
                      backColor: const Color(0xFF0047ba),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'T. Sağlık Sigortası',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                             TamamlayHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('handshake'),
                      backColor: const Color(0xFFe1251b),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'Yabancı Sağlık Sig.',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            YabanciHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('heart-heartbeat'),
                      backColor: const Color(0xFFfea403),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'Seyahat Sağlık Sig.',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          SeyahatHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('suitcase'),
                      backColor: const Color(0xFF0047ba),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'Evcil Hayvan Sig.',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          EvcilHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('pet'),
                      backColor: const Color(0xFFe1251b),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'Cep Telefonu Sig.',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          CepHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('phone-cracked'),
                      backColor: const Color(0xFF0aa0df),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: '2. El Garanti Sig.',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            AracHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('car-hand'),
                      backColor: const Color(0xFFfea403),
                    ),
                    const SizedBox(height: 10),
                    OffersItem(
                      title: 'Bireysel Sağlık Sig.',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          BireyselHomeScreen.routeName,
                        );
                      },
                      icon: const CustomIcon('hand-heart'),
                      backColor: const Color(0xFFfea403),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OffersItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final Color backColor;
  final void Function() onTap;

  const OffersItem(
      {required this.title,
      required this.onTap,
      required this.icon,
      required this.backColor});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width - 50 + 3,
      height: 58 + 3,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 3,
            right: 0,
            child: Container(
              color: backColor,
              width: width - 50,
              height: 58,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 5),
                    color: Color(
                      0x29000000,
                    ),
                  ),
                ],
              ),
              width: width - 50,
              height: 58,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 18,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        icon,
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          'Teklif Al',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          Icons.chevron_right,
                          size: 20,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
