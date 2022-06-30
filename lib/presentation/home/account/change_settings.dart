import 'package:dijipol/presentation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeSetting extends StatefulWidget {
  static const String routeName = '/change-settings';

  @override
  _ChangeSettingState createState() => _ChangeSettingState();
}

class _ChangeSettingState extends State<ChangeSetting> {
  bool switch1 = false;
  bool switch2 = false;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            border:
                Border(bottom: BorderSide(width: 2, color: Color(0x11000000)))),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 20,
          left: 20,
          right: 20,
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
                Icon(Icons.settings, color: primaryColorDark),
                SizedBox(width: 10),
                Text('Ayarlar', style: D24M),
              ],
            ),
            SizedBox(height: 40),
            Divider(height: 0),
            SizedBox(height: 24),
            Row(
              children: [
                Switch(
                    inactiveTrackColor: Color(0x306200ee),
                    inactiveThumbColor: Color(0x616200ee),
                    activeColor: Color(0xFF6200ee),
                    value: switch1,
                    onChanged: (val) {
                      setState(() {
                        switch1 = val;
                      });
                    }),
                SizedBox(width: 25),
                Expanded(
                    child: Text(
                        'SMS ile indirim ve kampanyalardan haberdar olmak istiyorum.'))
              ],
            ),
            SizedBox(height: 25),
            Divider(height: 0),
            SizedBox(height: 25),
            Row(
              children: [
                Switch(
                    inactiveTrackColor: Color(0x306200ee),
                    inactiveThumbColor: Color(0x616200ee),
                    activeColor: Color(0xFF6200ee),
                    value: switch2,
                    onChanged: (val) {
                      setState(() {
                        switch2 = val;
                      });
                    }),
                SizedBox(width: 25),
                Expanded(
                    child: Text(
                        'E-Posta ile indirim ve kampanyalardan haberdar olmak istiyorum'))
              ],
            ),
            SizedBox(height: 25),
            Divider(height: 0),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
