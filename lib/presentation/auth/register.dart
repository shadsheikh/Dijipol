import 'package:dijipol/presentation/auth/register_institute.dart';
import 'package:dijipol/presentation/auth/register_person.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  static const String routeName = '/register';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close, size: 30),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Üye Ol',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColorDark,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 15),
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
                                color: Theme.of(context).primaryColorDark)
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
                          'Şahıs',
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
                                color: Theme.of(context).primaryColorDark)
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
                          'Kurumsal',
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
            Expanded(
              child: PageView(
                controller: pageController,
                children: <Widget>[
                  RegisterPerson(),
                  RegisterInstitute(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
