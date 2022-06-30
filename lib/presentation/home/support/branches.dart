import 'package:dijipol/presentation/auth/login.dart';
import 'package:dijipol/presentation/auth/register.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

class Branches extends StatefulWidget {
  static const String routeName = '/branches';

  @override
  _BranchesState createState() => _BranchesState();
}

class _BranchesState extends State<Branches> {
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
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        child: Column(
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Şubelerimiz',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 200,
                      width: width,
                      color: Colors.grey[300],
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  highlightColor: Colors.transparent,
                                  child: Container(
                                    padding: const EdgeInsets.all(18),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const <Widget>[
                                        Text(
                                          'Bana En Yakın Şubeleri Göster',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Icon(Icons.location_pin,
                                            color: Colors.white),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Divider(),
                    const SizedBox(height: 25),
                    Container(
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                pageController.animateToPage(0,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease);
                              },
                              child: Container(
                                decoration: currentPage == 0
                                    ? BoxDecoration(
                                        color:
                                            Theme.of(context).primaryColorDark)
                                    : const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 2,
                                            color: Color(0xFFf1f3f5),
                                          ),
                                          top: BorderSide(
                                            width: 2,
                                            color: Color(0xFFf1f3f5),
                                          ),
                                          left: BorderSide(
                                            width: 2,
                                            color: Color(0xFFf1f3f5),
                                          ),
                                        ),
                                      ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Yurtiçi',
                                  style: TextStyle(
                                    color: currentPage == 0
                                        ? Colors.white
                                        : Theme.of(context).primaryColorLight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                pageController.animateToPage(1,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease);
                              },
                              child: Container(
                                decoration: currentPage == 1
                                    ? BoxDecoration(
                                        color:
                                            Theme.of(context).primaryColorDark)
                                    : const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 2,
                                            color: Color(0xFFf1f3f5),
                                          ),
                                          top: BorderSide(
                                            width: 2,
                                            color: Color(0xFFf1f3f5),
                                          ),
                                          right: BorderSide(
                                            width: 2,
                                            color: Color(0xFFf1f3f5),
                                          ),
                                        ),
                                      ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Yurtdışı',
                                  style: TextStyle(
                                    color: currentPage == 1
                                        ? Colors.white
                                        : Theme.of(context).primaryColorLight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: <Widget>[
                        const SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: const Color(0xFFf1f3f5),
                              ),
                            ),
                            child: DropdownButton<String>(
                              items: const <DropdownMenuItem<String>>[
                                DropdownMenuItem<String>(
                                  child: Text('Tüm İller'),
                                  value: '1',
                                ),
                                DropdownMenuItem<String>(
                                  child: Text('Tüm İller'),
                                  value: '2',
                                ),
                              ],
                              style: TextStyle(
                                color: Theme.of(context).primaryColorLight,
                                fontSize: 16,
                              ),
                              onChanged: (_) {},
                              value: '1',
                              isExpanded: true,
                              underline: Container(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: const Color(0xFFf1f3f5),
                            ),
                          ),
                          child: const Icon(Icons.search),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const BranchesList(
                      title: 'Adıyaman',
                    ),
                    const SizedBox(height: 20),
                    const BranchesList(
                      title: 'Amasya',
                    ),
                    const SizedBox(height: 20),
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

class BranchesList extends StatelessWidget {
  const BranchesList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              const SizedBox(width: 16),
              BranchItem(
                title: 'Amasya Zey Şube',
                subtitle: 'Turgut Reis Zey C. No:7 A/A',
                phone: '0 850 433 0850',
                internal: '2215',
                onTap: () {},
              ),
              BranchItem(
                title: 'Amasya Zey Şube',
                subtitle: 'Turgut Reis Zey C. No:7 A/A',
                phone: '0 850 433 0850',
                internal: '2215',
                onTap: () {},
              ),
              BranchItem(
                title: 'Amasya Zey Şube',
                subtitle: 'Turgut Reis Zey C. No:7 A/A',
                phone: '0 850 433 0850',
                internal: '2215',
                onTap: () {},
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ],
    );
  }
}

class BranchItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String phone;
  final String internal;
  final void Function() onTap;

  const BranchItem({
    required this.title,
    required this.subtitle,
    required this.phone,
    required this.internal,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      width: (width / 1.5) + 3,
      height: (width / 1.8) + 10,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 3,
            right: 0,
            child: Container(
              color: Theme.of(context).primaryColorDark,
              width: width / 1.5,
              height: width / 1.8,
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
                  ),
                ],
              ),
              height: width / 1.8,
              width: width / 1.5,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Telefon',
                              style: TextStyle(
                                color: Theme.of(context).primaryColorLight,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              phone,
                              style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dahili',
                              style: TextStyle(
                                color: Theme.of(context).primaryColorLight,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              internal,
                              style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
