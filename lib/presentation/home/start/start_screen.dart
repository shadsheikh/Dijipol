import 'dart:ui';
import 'package:dijipol/presentation/auth/login.dart';
import 'package:dijipol/presentation/auth/register.dart';
import 'package:dijipol/presentation/home/offers/offers_screen.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen(this.changeTab);

  static const String routeName = '/start-screen';
  final void Function(String) changeTab;

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final PageController pageController = PageController(initialPage: 0);
  final ValueNotifier<int> currentPage = ValueNotifier<int>(0);

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPage.value = (pageController.page ?? 0).round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void showDetailsModal() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 8),
            Container(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFbbc3cf),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xFFbbc3cf),
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).padding.top + 20,
        // horizontal: 20,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const SizedBox(width: 20),
              Image.asset(
                'lib/assets/images/logo_banner.png',
                width: width / 3,
                fit: BoxFit.scaleDown,
              ),
              const Spacer(),
              AppButton(
                text: 'Giriş Yap',
                onTap: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },
                fontSize: 14,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                fontWeight: FontWeight.w500,
                color: Colors.transparent,
                textColor: Theme.of(context).primaryColorDark,
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                child: AppButton(
                  text: 'Üye Ol',
                  fontSize: 14,
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  fontWeight: FontWeight.w500,
                  onTap: () {
                    Navigator.of(context).pushNamed(Register.routeName);
                  },
                  color: Colors.transparent,
                  textColor: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(width: 10,)
            ],
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              children: <Widget>[
                SlideViewContainer(
                  key: const Key('1'),
                  text1: 'Aradığın sigorta, dijipol.com’da',
                  text2:
                      'Kasko’dan Dask’a, Tamamlayıcı Sağlık Sigortasından Seyahat Sigortasına kadar aradığın her teklifi bul, karşılaştır, satın al.',
                  infoButtonPressed: showDetailsModal,
                  changeTab: widget.changeTab,
                ),
                SlideViewContainer(
                  key: const Key('2'),
                  text1: 'Kasko Sigortası',
                  text2:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  infoButtonPressed: showDetailsModal,
                  changeTab: widget.changeTab,
                ),
                SlideViewContainer(
                  key: const Key('3'),
                  text1: 'Trafik Sigortası',
                  text2:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  infoButtonPressed: showDetailsModal,
                  changeTab: widget.changeTab,
                ),
                SlideViewContainer(
                  key: const Key('4'),
                  text1: 'DASK Sigortası',
                  text2:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  infoButtonPressed: showDetailsModal,
                  changeTab: widget.changeTab,
                ),
                SlideViewContainer(
                  key: const Key('5'),
                  text1: 'Konut Sigortası',
                  text2:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  infoButtonPressed: showDetailsModal,
                  changeTab: widget.changeTab,
                ),
                SlideViewContainer(
                  key: const Key('6'),
                  text1: 'Tamamlayıcı Sağlık Sigortası',
                  text2:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  infoButtonPressed: showDetailsModal,
                  changeTab: widget.changeTab,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ValueListenableBuilder<int>(
              valueListenable: currentPage,
              builder: (BuildContext ctx, int val, _) => DotsIndicator(
                dotsCount: 6,
                position: val.toDouble(),
                decorator: DotsDecorator(
                  activeColor: Theme.of(context).primaryColor,
                  color: const Color(0xFFabb3bf),
                  size: const Size.square(12),
                  activeSize: const Size.square(20),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  spacing: const EdgeInsets.symmetric(horizontal: 5),
                  // shape: const CircleBorder(
                  //   side: BorderSide(
                  //     color: Colors.white,
                  //     width: 1,
                  //   ),
                  // ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideViewContainer extends StatelessWidget {
  const SlideViewContainer({
    Key? key,
    required this.text1,
    required this.text2,
    required this.infoButtonPressed,
    required this.changeTab,
  }) : super(key: key);

  final String text1;
  final String text2;
  final void Function() infoButtonPressed;
  final void Function(String) changeTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            text1,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).primaryColorDark,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).primaryColorLight,
            ),
            textAlign: TextAlign.left,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: AppButton(
                  text: 'Teklif Al',
                  onTap: () {
                    changeTab(OffersScreen.routeName);
                  },
                  color: const Color(0xFF1ab759),
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: AppButton(
                    text: 'Bilgi Al',
                    onTap: infoButtonPressed,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 18,
                    ),
                    color: Colors.white,
                    textColor: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                child: BenifitsButton(
                  text: 'İhtiyacın Olan Her Sigorta',
                  color: Theme.of(context).primaryColor,
                  icon: const Icon(CupertinoIcons.suit_heart),
                ),
              ),
              SizedBox(
                child: BenifitsButton(
                  text: 'Kişiselleştirilmiş Hizmet',
                  color: Theme.of(context).primaryColor,
                  icon: const Icon(Icons.headphones),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                child: BenifitsButton(
                  text: 'Kolay Erişim',
                  color: Theme.of(context).primaryColor,
                  icon: const Icon(Icons.label_outline),
                ),
              ),
              SizedBox(
                child: BenifitsButton(
                  text: 'Kesintisiz Destek',
                  color: Theme.of(context).primaryColor,
                  icon: const Icon(Icons.shield_outlined),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BenifitsButton extends StatelessWidget {
  final String text;
  final Color color;
  final Widget icon;

  const BenifitsButton({
    required this.text,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: (width - 40) / 2,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 51,
            height: 51,
            child: Stack(
              children: <Widget>[
                const SizedBox(
                  width: 51,
                  height: 51,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 48,
                    width: 48,
                    color: color,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 48,
                    width: 48,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: icon,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
