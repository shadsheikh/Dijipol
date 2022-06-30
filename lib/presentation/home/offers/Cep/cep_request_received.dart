import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

class EvcilRequestReceived extends StatelessWidget {
  static const String routeName = '/evcil-request-received';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 20,
          left: 25,
          right: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                  'Evcil Sigortası',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
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
                  color: const Color(0xFFbbc3cf),
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
            const SizedBox(height: 8),
            Center(
              child: Text(
                'Bilgileri Gir',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    const Center(
                      child: Icon(
                        Icons.check_circle,
                        size: 150,
                        color: Color(0xFF2ac769),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Talebiniz Başarıyla\nAlınmıştır',
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doeiusmod tempor incididunt ut labore et dolore.',
                      style: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'E-posta adresi: ',
                            style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                            ),
                          ),
                          TextSpan(
                            text: 'sinan_soylu@live.nl',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    AppButton(
                      text: 'Anasayfaya Dön',
                      onTap: () {
                      },
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
