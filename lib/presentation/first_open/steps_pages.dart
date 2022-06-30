import 'package:dijipol/presentation/home/home_bottom_tabs.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class StepsPagesScreen extends StatefulWidget {
  static const String routeName = '/steps-screen';

  @override
  _StepsPagesScreenState createState() => _StepsPagesScreenState();
}

class _StepsPagesScreenState extends State<StepsPagesScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: pageController,
              children: const <Widget>[
                StepViewContainer(
                  key: Key('1'),
                  image: 'lib/assets/images/steps/s1.png',
                ),
                StepViewContainer(
                  key: Key('2'),
                  image: 'lib/assets/images/steps/s2.png',
                ),
                StepViewContainer(
                  key: Key('3'),
                  image: 'lib/assets/images/steps/s3.png',
                ),
                StepViewContainer(
                  key: Key('4'),
                  image: 'lib/assets/images/steps/s4.png',
                ),
                StepViewContainer(
                  key: Key('5'),
                  image: 'lib/assets/images/steps/s5.png',
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
                dotsCount: 5,
                position: val.toDouble(),
                decorator: DotsDecorator(
                  activeColor: Theme.of(context).primaryColor,
                  color: const Color(0xFFBBC3CF),
                  size: const Size.square(12),
                  activeSize: const Size.square(20),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  spacing: const EdgeInsets.symmetric(horizontal: 5),
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: ValueListenableBuilder<int>(
              valueListenable: currentPage,
              builder: (BuildContext ctx, int val, _) => Text(
                <String>[
                  'Get instant offer, Compare, Buy!',
                  'Track your past policies easily!',
                  'QR Code Ease Get Information Instantly!',
                  '24 Banks Contracted Cash, Installment Payment Facility!',
                  '29 Different Insurance Companies in one app',
                ][val.toInt()],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColorDark,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sagittis vitae erat vitae vehicula. Cras id elementum mauris. Nam bibendum luctus justo non dapibus. ',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).primaryColorLight,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: ValueListenableBuilder<int>(
              valueListenable: currentPage,
              builder: (BuildContext ctx, int val, _) => Row(
                children: <Widget>[
                  Expanded(
                    child: AppButton(
                      text: 'Continue',
                      onTap: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                        if (val == 4) {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushReplacementNamed(HomeBottomTabs.routeName);
                        }
                      },
                    ),
                  ),
                  if (val == 4)
                    Container()
                  else
                    Expanded(
                      child: AppButton(
                        color: Colors.white,
                        textColor: Theme.of(context).primaryColor,
                        text: 'Skip',
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushReplacementNamed(HomeBottomTabs.routeName);
                        },
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StepViewContainer extends StatelessWidget {
  const StepViewContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image.asset(image),
          ),
        ],
      ),
    );
  }
}
