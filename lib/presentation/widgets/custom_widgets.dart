import 'package:flutter/material.dart';

import '../../presentation/utils/constant.dart';
import 'app_button.dart';
import 'app_text_input.dart';

class DualTextRow extends StatelessWidget {
  final String text1;
  final String text2;

  DualTextRow({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        Row(
          children: [
            Expanded(child: Text(text1,style: L14M)),
            Text(text2,style: D14M),
          ],
        ),
        SizedBox(height: 25),
        Divider(height: 1),
      ],
    );
  }
}

class DualTextColumn extends StatelessWidget {
  final String text1;
  final String text2;

  DualTextColumn({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1, style: D16B),
        Text(text2, style: L16R),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class CheckboxText extends StatelessWidget {

  final String text;
  final bool value;
  final void Function(bool?) onChange;

  CheckboxText({required this.text, required this.value ,required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: value,
          onChanged: onChange,
          activeColor:
          Theme.of(context).primaryColor,
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
                color: Theme.of(context)
                    .primaryColorDark),
          ),
        ),
      ],
    );
  }
}

class ViewOffersItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String installment;
  final String subinstallment;
  final void Function() onButtonTap;
  final void Function(bool) onChange;
  final bool switchvalue;
  final Color bordercolor;
  final bool headerVisible;

  ViewOffersItem({
    required this.title,
    required this.subtitle,
    required this.installment,
    required this.subinstallment,
    required this.onButtonTap,
    required this.onChange,
    required this.switchvalue,
    required this.bordercolor,
    this.headerVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 17),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: bordercolor,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 17),
              Row(
                children: [
                  Image.asset(
                    'lib/assets/images/Aklogo.png',
                    width: 115,
                    height: 57,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: D16M,
                      ),
                      SizedBox(height: 8),
                      Text(
                        subtitle,
                        style: D12R,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 9),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        installment,
                        style: L14M,
                      ),
                      SizedBox(height: 2),
                      Text(
                        subinstallment,
                        style: P14M,
                      ),
                    ],
                  ),
                  Spacer(),
                  AppButton(
                    text: 'Satın Al',
                    onTap: onButtonTap,
                    color: Color(0xFF1ab759),
                    padding: EdgeInsets.symmetric(horizontal: 33, vertical: 12),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Divider(color: Colors.black),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Poliçe Detayı',
                    style: P12M,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: primaryColor,
                  ),
                  Spacer(),
                  Text(
                    'Karşılaştır',
                    style: D10M,
                  ),
                  SizedBox(width: 6),
                  Switch(value: switchvalue, onChanged: onChange),
                ],
              )
            ],
          ),
        ),
        if(headerVisible)
          Positioned(
            top: 0,
            left: 16,
            height: 34,
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                // borderRadius: BorderRadius.circular(200),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: const Center(
                  child: Text(
                    'EN DÜŞÜK FİYAT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class OffersItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final Color backColor;

  const OffersItem(
      {required this.title, required this.icon, required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 15,
            offset: Offset(0, 5),
            color: Color(
              0x29000000,
            ),
          ),
          BoxShadow(
            offset: const Offset(3, 3),
            color: backColor,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                icon,
              ],
            ),
            SizedBox(
              width: 9,
            ),
            Flexible(
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RowValues(
                    text1: 'Teklif Sayısı',
                    text2: '13',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  RowValues(
                    text1: 'En Düşük',
                    text2: '1.311,25 TL',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  RowValues(
                    text1: 'Fiyat Avantajı',
                    text2: '%23',
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OffersItem2 extends StatelessWidget {
  final Widget icon;
  final String title;
  final Color backColor;

  const OffersItem2(
      {required this.title, required this.icon, required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 15,
            offset: Offset(0, 5),
            color: Color(
              0x29000000,
            ),
          ),
          BoxShadow(
            offset: const Offset(3, 3),
            color: backColor,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Stack(
                    children:const  <Widget>[
                      Center(
                        child: SizedBox(
                          width: 58,
                          height: 58,
                          child:  CircularProgressIndicator(
                            backgroundColor: primaryColor,
                            color: Color(0xFFbbc3cf),
                            value: 0.5,
                          ),
                        ),
                      ),
                      Center(child: Text("%13",style: TextStyle(color: primaryColor),)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 9,
            ),
            Flexible(
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RowValues2(
                    text1: 'Teklif Sayısı',
                    text2: '13',
                    color1: Colors.red,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  RowValues2(
                    text1: 'En Düşük',
                    text2: '1.311,25 TL',
                    color2: Colors.amber,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  RowValues2(
                    text1: 'Fiyat Avantajı',
                    text2: '%23',
                    color3: Colors.blue,
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowValues2 extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color1;
  final Color color2;
  final Color color3;

  static const Color defaultcolor = Color(0xFFbbc3cf);
  RowValues2({required this.text1, required this.text2, this.color1 = defaultcolor, this.color2 = defaultcolor, this.color3 = defaultcolor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: L12_R,
        ),
        Spacer(),
        Container(
          width: 8,
          height: 8,
          color: color1,
        ),
        SizedBox(width: 6),
        Container(
          width: 8,
          height: 8,
          color: color2,
        ),
        SizedBox(width: 6),
        Container(
          width: 8,
          height: 8,
          color: color3,
        ),
        SizedBox(width: 8),
        Text(
          text2,
          style: D16B,
        ),
      ],
    );
  }
}

class RowValues extends StatelessWidget {
  final String text1;
  final String text2;

  RowValues({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: L12_R,
        ),
        Text(
          text2,
          style: D16B,
        ),
      ],
    );
  }
}

class DualAppTextInput extends StatelessWidget {

  final String labeltext1;
  final String labeltext2;
  final String initialtext1;
  final String initialtext2;

  DualAppTextInput({required this.labeltext1, required this.initialtext1, required this.labeltext2, required this.initialtext2});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: AppTextInput(
            label: labeltext1,
            readOnly: true,
            initialValue: initialtext1,
            fontSize: 14,
            suffixIcon: Icon(Icons.keyboard_arrow_down),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: AppTextInput(
            label: labeltext2,
            readOnly: true,
            initialValue: initialtext2,
            fontSize: 14,
            suffixIcon: Icon(Icons.keyboard_arrow_down),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
        ),
      ],
    );
  }
}

class RadioText<T> extends StatelessWidget {

  RadioText({required this.value, required this.groupvalue , required this.onChange,required this.text});

  final T value;
  final void Function(T) onChange;
  final T? groupvalue;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Radio<T>(
            value: value,
            groupValue: groupvalue,
            onChanged: (T? i) {
              if (i != null)
                onChange(i);
            },
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => onChange(value),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

