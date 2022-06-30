import 'package:dijipol/presentation/utils/constant.dart';
import 'package:dijipol/presentation/home/policies/policy_details_dialog.dart';
import 'package:dijipol/presentation/widgets/app_button.dart';
import 'package:dijipol/presentation/widgets/app_text_input.dart';
import 'package:flutter/material.dart';

class PolicyScreen2 extends StatefulWidget {
  static const String routeName = '/policy-screen2';

  @override
  _PolicyScreen2State createState() => _PolicyScreen2State();
}

class _PolicyScreen2State extends State<PolicyScreen2> {
  bool policyChecked = false;

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
          SizedBox(height: 65),
          Text('Poliçelerim',style: D24M),
          SizedBox(height: 40),
          AppTextInput(
            readOnly: true,
            initialValue: 'Nakliyat',
            fontSize: 14,
            suffixIcon: Icon(Icons.keyboard_arrow_down),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: <Widget>[
              Checkbox(
                value: policyChecked,
                onChanged: (bool? p) => setState(() {
                  policyChecked = p ?? false;
                }),
                activeColor:
                Theme.of(context).primaryColor,
              ),
              Flexible(
                child: Text(
                  'Vadesi bitmek üzere olanları göster',
                  style: TextStyle(
                      color: Theme.of(context)
                          .primaryColorDark),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Divider(),
          SizedBox(height: 12),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                FourText(text1: '12303203203232',text2: 'Sinan Soylu',text3: 'Akbank Neasürans Hizmetleri A.Ş',text4: 'Kalan Gün: 365'),
                SizedBox(height: 25),
                FourText(text1: '12303203203232',text2: 'Sinan Soylu',text3: 'Akbank Neasürans Hizmetleri A.Ş',text4: 'Kalan Gün: 365'),
                SizedBox(height: 25),
                FourText(text1: '12303203203232',text2: 'Sinan Soylu',text3: 'Akbank Neasürans Hizmetleri A.Ş',text4: 'Kalan Gün: 365'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class FourText extends StatelessWidget {

  final String text1;
  final String text2;
  final String text3;
  final String text4;

  FourText({required this.text1,required this.text2,required this.text3,required this.text4});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       showDialog(context: context, builder: (context)=>PolicyDetailsDialog(),);
      },
      child: Column(
        children: [
          Row(
            children: [
              Text(text1,style: P12R),
              Spacer(),
              Text(text2,style: L12R),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(text3,style: L12R),
              Spacer(),
              Text(text4,style: D12R),
            ],
          ),
          SizedBox(height: 8),
          Divider(),
        ],
      ),
    );
  }
}
