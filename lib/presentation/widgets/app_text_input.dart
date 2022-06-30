import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    this.label,
    this.floatingLabel,
    this.disabled = false,
    this.enabled = true,
    this.color,
    this.labelColor,
    this.fontSize,
    this.labelFontWeight,
    this.placeholder,
    this.backgroundColor,
    this.obscureText = false,
    this.displayBorder = false,
    this.customBorder,
    this.prefixIcon,
    this.suffixIcon,
    this.leading,
    this.trailing,
    this.contentPadding,
    this.keyboardType,
    this.readOnly = false,
    this.initialValue,
    this.controller,
  });

  final String? label;
  final String? floatingLabel;
  final bool disabled; // changes background to grey
  final bool enabled; // Just disables click
  final Color? color;
  final Color? labelColor;
  final double? fontSize;
  final FontWeight? labelFontWeight;
  final String? placeholder;
  final Color? backgroundColor;
  final bool obscureText;
  final bool displayBorder;
  final Border? customBorder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? keyboardType;
  final bool readOnly;
  final String? initialValue;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (label != null)
          Text(
            label!,
            style: TextStyle(
              color: labelColor ?? Theme.of(context).primaryColorDark,
              fontWeight: labelFontWeight ?? FontWeight.w500,
              fontSize: fontSize ?? 16,
            ),
          ),
        if (label != null) const SizedBox(height: 10),
        Container(
          decoration: displayBorder
              ? BoxDecoration(
                  border: customBorder ??
                      Border.all(
                        width: 1,
                        color: const Color(0xFFe4e7ec),
                      ),
                  color: const Color(0xfff1f3f5),
                )
              : const BoxDecoration(
                  color: Color(0xfff1f3f5),
                ),
          child: Row(
            children: <Widget>[
              if (leading != null) leading!,
              Expanded(
                child: TextFormField(
                  obscureText: obscureText,
                  keyboardType: keyboardType,
                  readOnly: readOnly,
                  initialValue: initialValue,
                  decoration: InputDecoration(
                    labelText: floatingLabel,
                    hintText: placeholder,
                    border: InputBorder.none,
                    prefixIcon: prefixIcon,
                    suffixIcon: suffixIcon,
                    contentPadding: contentPadding ??
                        EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: floatingLabel == null ? 0 : 8,
                        ),
                  ),
                  controller: controller,
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ],
    );
  }
}
