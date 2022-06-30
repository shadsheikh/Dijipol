import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String iconName;
  final double? size;

  const CustomIcon(
    this.iconName, {
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 24,
      width: size ?? 24,
      child: Image.asset(
        'lib/assets/images/icons/$iconName.png',
        fit: BoxFit.contain,
        height: size ?? 24,
        width: size ?? 24,
      ),
    );
  }
}
