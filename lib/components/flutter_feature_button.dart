import 'package:flutter/material.dart';

class FlutterFeatureButton extends StatelessWidget {
  final String? text;
  final Color? bgColor;
  final double? height;
  final double? width;
  final ShapeBorder? border;
  final TextStyle? textStyle;
  final VoidCallback? onTap;
  const FlutterFeatureButton({
    super.key,
    this.text,
    this.bgColor,
    this.height,
    this.width,
    this.border,
    this.textStyle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap ?? () {},
      color: bgColor ?? Colors.blue,
      elevation: 0,
      minWidth: width ?? double.infinity,
      height: height ?? 50,
      shape: border ??
          RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(50)),
      child: Text(
        text ?? "Save", //AppStrings.signUp,
        style: textStyle ?? const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500
        )
      ),
    );
  }
}
