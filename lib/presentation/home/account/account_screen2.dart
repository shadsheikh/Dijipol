import 'package:dijipol/presentation/first_open/select_language.dart';
import 'package:dijipol/presentation/home/account/change_language.dart';
import 'package:dijipol/presentation/home/account/change_password.dart';
import 'package:dijipol/presentation/home/account/change_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../presentation/utils/constant.dart';

class AccountScreen2 extends StatefulWidget {
  static const String routeName = '/account-screen2';

  @override
  _AccountScreen2State createState() => _AccountScreen2State();
}

class _AccountScreen2State extends State<AccountScreen2> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(width: 2, color: Color(0x11000000)))),
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).padding.top + 20,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: <Widget>[
              Image.asset(
                'lib/assets/images/logo_banner1.png',
                width: width / 3,
                fit: BoxFit.scaleDown,
              ),
              const Spacer(),
              Text('S.SOYLU',style: D16M),
            ],
          ),
          SizedBox(height: 64),
          Text('Hesabım',style: D24M),
          SizedBox(height: 40),
          ListItem(text: 'Şifre Değiştir',icon: Icons.lock_outline_rounded, onTap: (){
            Navigator.pushNamed(context, ChangePassword.routeName);
          }),
          SizedBox(height: 15),
          ListItem(text: 'Dil Seçimi',icon: CupertinoIcons.globe, onTap: (){
            Navigator.pushNamed(context, ChangeLanguage.routeName);
          }),
          SizedBox(height: 15),
          ListItem(text: 'Ayarlar',icon: Icons.settings, onTap: () {
            Navigator.pushNamed(context, ChangeSetting.routeName);
          }),
          SizedBox(height: 15),
          ListItem(text: 'Çikiş',icon: Icons.power_settings_new,onTap: (){
            Navigator.of(context).pushReplacementNamed(SelectLanguageScreen.routeName);
          },),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  ListItem({required this.text , required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x29000000),),
        ),
        child: ListTile(
          leading: Icon(this.icon,color: primaryColorDark),
          title: Text(text,style: D16M),
          trailing: Icon(Icons.keyboard_arrow_right_outlined,color: primaryColorDark),
        ),
      ),
    );
  }
}