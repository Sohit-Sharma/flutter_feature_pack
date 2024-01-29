import 'package:flutter/material.dart';

class FlutterFeatureTextField extends StatelessWidget {
  final String? hint;
  final Color? borderColor;
  final Color? textColor;
  final Color? hintColor;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final bool obscureText;
  final bool isDense;
  final int? maxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputAction? inputAction;
  final TextInputType? inputType;
  final bool isEnabled;
  final bool readOnly;
  final int? minLines;
  final BorderRadius? borderRadius;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const FlutterFeatureTextField(
      {super.key,
      this.controller,
      this.suffixIcon,
      this.hint,
      this.minLines,
      this.borderColor,
      this.prefixIcon,
      this.textColor,
      this.hintColor,
      this.hintStyle,
      this.textStyle,
      this.obscureText = false,
      this.isDense = true,
      this.maxLines = 1,
      this.inputAction,
      this.inputType,
      this.isEnabled = true,
      this.readOnly = false,
      this.borderRadius,
      this.onChanged,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      readOnly: readOnly,
      enabled: isEnabled,
      minLines: minLines,
      maxLines: maxLines,
      style: textStyle ?? TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        color: textColor ?? Colors.black,
        height: 1.0,
        fontWeight: FontWeight.w400
      ),
      textAlign: TextAlign.justify,
      obscureText: obscureText,
      textInputAction: inputAction ?? TextInputAction.done,
      decoration: InputDecoration(
          isDense: isDense,
          fillColor: Colors.transparent,
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hint,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
              borderSide:
                  BorderSide(width: 1, color: borderColor ?? Colors.red)),
          errorBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
              borderSide:
                  BorderSide(width: 1, color: borderColor ?? Colors.red)),
          focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
              borderSide:
                  BorderSide(width: 1, color: borderColor ?? Colors.blue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
              borderSide:
                  BorderSide(width: 1, color: borderColor ?? Colors.blue)),
          hintStyle: hintStyle ?? TextStyle(fontSize: 14, color: hintColor ?? Colors.grey)),
      keyboardType: inputType ?? TextInputType.text,
      controller: controller,
    );
  }
}
