import 'package:dijipol/presentation/first_open/steps_pages.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

class SelectLanguageScreen extends StatelessWidget {
  static const String routeName = '/select-language';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: RichText(
                text: TextSpan(
                  children: const <InlineSpan>[
                    TextSpan(
                      text: 'Please ',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: 'Select Language',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(width: 20),
                const Icon(
                  Icons.radio_button_unchecked,
                  color: Color(0xFF0047bb),
                ),
                Image.asset(
                  'lib/assets/images/turkey_flag.png',
                  width: 95,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Türkçe',
                      style: TextStyle(color: Theme.of(context).primaryColorDark),
                    ),
                    Text(
                      'Turkish',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'اللغة التركية',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'ترکی',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'Tурецкий',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(width: 20),
                const Icon(
                  Icons.radio_button_checked,
                  color: Color(0xFF0047bb),
                ),
                Image.asset(
                  'lib/assets/images/uk_flag.png',
                  width: 95,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'English',
                      style: TextStyle(color: Theme.of(context).primaryColorDark),
                    ),
                    Text(
                      'İngilizce',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'الإنجليزية',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'انگلیسی',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'Aнглийский',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(width: 20),
                const Icon(
                  Icons.radio_button_unchecked,
                  color: Color(0xFF0047bb),
                ),
                Image.asset(
                  'lib/assets/images/saudi_flag.jpeg',
                  width: 95,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'عربى',
                      style: TextStyle(color: Theme.of(context).primaryColorDark),
                    ),
                    Text(
                      'Arapça',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'Arabic',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'عربی',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    Text(
                      'Aрабский',
                      style: TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(25),
              child: AppButton(
                text: 'Continue',
                onTap: () {
                  Navigator.of(context).pushNamed(StepsPagesScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
