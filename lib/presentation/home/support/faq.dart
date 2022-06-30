import 'package:dijipol/presentation/auth/login.dart';
import 'package:dijipol/presentation/auth/register.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  static const String routeName = '/faq';

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPage = (pageController.page ?? 0).round();
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
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
                AppButton(
                  text: 'Giriş Yap',
                  onTap: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  fontSize: 14,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    fontWeight: FontWeight.w500,
                    onTap: () {
                      Navigator.of(context).pushNamed(Register.routeName);
                    },
                    color: Colors.transparent,
                    textColor: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Sıkça Sorulan Sorular',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColorDark,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppTextInput(
                displayBorder: true,
                floatingLabel: 'Arama yap',
                prefixIcon: Icon(Icons.search, size: 30),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Chip(
                      label: const Text('Genel'),
                      backgroundColor: currentPage == 0
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      labelStyle: TextStyle(
                          color: currentPage == 0
                              ? Colors.white
                              : Theme.of(context).primaryColorLight),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Chip(
                      label: const Text('Ödeme'),
                      backgroundColor: currentPage == 1
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      labelStyle: TextStyle(
                          color: currentPage == 1
                              ? Colors.white
                              : Theme.of(context).primaryColorLight),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Chip(
                      label: const Text('Hizmetler'),
                      backgroundColor: currentPage == 2
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      labelStyle: TextStyle(
                          color: currentPage == 2
                              ? Colors.white
                              : Theme.of(context).primaryColorLight),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Chip(
                      label: const Text('Kasko'),
                      backgroundColor: currentPage == 3
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      labelStyle: TextStyle(
                          color: currentPage == 3
                              ? Colors.white
                              : Theme.of(context).primaryColorLight),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(
                        4,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Chip(
                      label: const Text('Birey'),
                      backgroundColor: currentPage == 4
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      labelStyle: TextStyle(
                          color: currentPage == 4
                              ? Colors.white
                              : Theme.of(context).primaryColorLight),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (_, int index) => SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      FaqCard(
                        title: 'Lorem İpsum Sit Dolor Met',
                        subtitle:
                            'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi. Nisi ullamco id ex amet anim sunt sint. Voluptate est enim esse ex sit nisi id cillum nulla est.',
                        cornerIcon: Icon(
                          Icons.close,
                          color: Theme.of(context).primaryColorDark,
                        ),
                      ),
                      FaqCard(
                        title:
                            'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi.',
                        // subtitle:
                        //     'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi. Nisi ullamco id ex amet anim sunt sint. Voluptate est enim esse ex sit nisi id cillum nulla est.',
                        cornerIcon: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColorDark,
                        ),
                      ),
                      FaqCard(
                        title:
                            'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi.',
                        // subtitle:
                        //     'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi. Nisi ullamco id ex amet anim sunt sint. Voluptate est enim esse ex sit nisi id cillum nulla est.',
                        cornerIcon: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColorDark,
                        ),
                      ),
                      FaqCard(
                        title:
                            'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi.',
                        // subtitle:
                        //     'Ullamco incididunt minim nostrud in nulla deserunt mollit nisi. Nisi ullamco id ex amet anim sunt sint. Voluptate est enim esse ex sit nisi id cillum nulla est.',
                        cornerIcon: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColorDark,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        margin: const EdgeInsets.all(25),
                        child: AppButton(
                          text: 'Haritada Gör',
                          fontSize: 18,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 7),
                          fontWeight: FontWeight.w500,
                          onTap: () {},
                          color: Colors.transparent,
                          textColor: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FaqCard extends StatelessWidget {
  const FaqCard({
    Key? key,
    required this.title,
    this.subtitle,
    this.cornerIcon,
  }) : super(key: key);
  final String title;
  final String? subtitle;
  final Widget? cornerIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 15,
            color: Color(
              0x29000000,
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              if (cornerIcon != null) cornerIcon!
            ],
          ),
          if (subtitle != null) const SizedBox(height: 30),
          if (subtitle != null)
            Text(
              subtitle!,
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontWeight: FontWeight.w400,
              ),
            ),
        ],
      ),
    );
  }
}
