import 'package:dijipol/presentation/utils/constant.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeLanguage extends StatefulWidget {
  static const String routeName = '/change-language';

  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(width: 2, color: Color(0x11000000)))),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 20,
          left: 20,right: 20,
        ),
        // margin: EdgeInsets.only(bottom: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
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
                  'S.SOYLU',
                  style: D16M,
                ),
              ],
            ),
            SizedBox(height: 70),
            Row(
              children: [
                Icon(CupertinoIcons.globe, color: primaryColorDark),
                SizedBox(width: 10),
                Text('Dil Seçimi',style: D24M),
              ],
            ),
            SizedBox(height: 40),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  LanguageItem(text1: 'Türkçe', text2: 'Turkish', text3: 'اللغة التركية', text4: 'ترکی', text5: 'Tурецкий', image: 'turkey_flag.png'),
                  LanguageItem(text1: 'Türkçe', text2: 'Turkish', text3: 'اللغة التركية', text4: 'ترکی', text5: 'Tурецкий', image: 'uk_flag.png'),
                  LanguageItem(text1: 'Türkçe', text2: 'Turkish', text3: 'اللغة التركية', text4: 'ترکی', text5: 'Tурецкий', image: 'saudi_flag.jpeg'),
                  LanguageItem(text1: 'Türkçe', text2: 'Turkish', text3: 'اللغة التركية', text4: 'ترکی', text5: 'Tурецкий', image: 'iran_flag.png'),
                  LanguageItem(text1: 'Türkçe', text2: 'Turkish', text3: 'اللغة التركية', text4: 'ترکی', text5: 'Tурецкий', image: 'russia_flag.png'),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class LanguageItem extends StatelessWidget {

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String image;

  LanguageItem({required this.text1,required this.text2,required this.text3,required this.text4,required this.text5,required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(width: 20),
          const Icon(
            Icons.radio_button_unchecked,
            color: Color(0xFF0047bb),
          ),
          Image.asset('lib/assets/images/$image',width: 95),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text1,
                style: TextStyle(color: Theme.of(context).primaryColorDark),
              ),
              Text(
                text2,
                style: TextStyle(color: Theme.of(context).primaryColorLight),
              ),
              Text(
                text3,
                style: TextStyle(color: Theme.of(context).primaryColorLight),
              ),
              Text(
                text4,
                style: TextStyle(color: Theme.of(context).primaryColorLight),
              ),
              Text(
                text5,
                style: TextStyle(color: Theme.of(context).primaryColorLight),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
