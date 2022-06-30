import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    required this.onTap,
    this.disabled = false,
    this.enabled = true,
    this.loading = false,
    this.color,
    this.textColor,
    this.padding = const EdgeInsets.all(18),
    this.fontSize,
    this.fontWeight,
  });

  final void Function() onTap;
  final String text;
  final bool disabled; // changes background to grey
  final bool enabled; // Just disables click
  final bool loading;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry padding;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: disabled || loading
            ? Theme.of(context).disabledColor
            : color ?? Theme.of(context).primaryColor,
        // borderRadius: BorderRadius.circular(200),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: !disabled && enabled && !loading ? onTap : null,
          highlightColor: Colors.transparent,
          child: Container(
            padding: padding,
            child: Center(
              child: loading
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : Text(
                      text,
                      style: TextStyle(
                        color: disabled || loading
                            ? Colors.white
                            : textColor ?? Colors.white,
                        fontWeight: fontWeight ?? FontWeight.w700,
                        fontSize: fontSize ?? 18,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppButtonIcon extends StatelessWidget {
  const AppButtonIcon({
    required this.text,
    required this.onTap,
    this.disabled = false,
    this.enabled = true,
    this.loading = false,
    this.color,
    this.textColor,
    this.padding = const EdgeInsets.all(18),
    this.fontSize,
    this.fontWeight,
    required this.icon,
  });

  final void Function() onTap;
  final String text;
  final bool disabled; // changes background to grey
  final bool enabled; // Just disables click
  final bool loading;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: disabled || loading
            ? Theme.of(context).disabledColor
            : color ?? Theme.of(context).primaryColor,
        // borderRadius: BorderRadius.circular(200),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: !disabled && enabled && !loading ? onTap : null,
          highlightColor: Colors.transparent,
          child: Container(
            padding: padding,
            child: Center(
              child: loading
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                            color: disabled || loading
                                ? Colors.white
                                : textColor ?? Colors.white,
                            fontWeight: fontWeight ?? FontWeight.w700,
                            fontSize: fontSize ?? 18,
                          ),
                        ),
                        SizedBox(width: 15),
                        icon,
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
