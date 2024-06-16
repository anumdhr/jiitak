import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomTextFieldWithBottomBorder extends StatelessWidget {
  CustomTextFieldWithBottomBorder({
    Key? key,
    this.onTap,
    required this.obscureText,
    required this.hintText,
    this.maxLength,
    this.icon,
    this.backgroundColor,
    this.width,
    this.suffixIconUrl,
    this.onChange,
    this.hintTextColor,
    this.validator,
    this.initialValue,
    this.textInputType,
    this.controller,
    this.enabled = true,
    this.inputDecoration,
    this.autoFocus = false,
    this.headingText,
    this.isFieldValidate,
    this.suffixIconColor,
    this.onTapSuffixIcon, this.suffix,
  }) : super(key: key);

  bool? isFieldValidate;
  final String hintText;
  final Icon? icon;
  String? suffixIconUrl;
  final Color? backgroundColor;
  void Function()? onTap;
  final double? width;
  final Color? hintTextColor;
  final FormFieldValidator<String>? validator;
  final TextInputType? textInputType;
  final String? initialValue;
  final TextEditingController? controller;
  ValueChanged? onChange;
  final bool enabled;
  final InputDecoration? inputDecoration;
  final bool autoFocus;
  String? headingText;
  final int? maxLength;
  final bool obscureText;
  final Color? suffixIconColor;
  final void Function()? onTapSuffixIcon;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingText == null
            ? const SizedBox()
            : Text(
          headingText!,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        TextFormField(
          obscureText: obscureText,
          textAlignVertical: TextAlignVertical.center,
          initialValue: initialValue,
          autofocus: autoFocus,
          onChanged: onChange,
          controller: controller,
          onTap: onTap,
          enabled: enabled,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: [
            LengthLimitingTextInputFormatter(maxLength),
          ],
          decoration: inputDecoration ??
              InputDecoration(


                contentPadding: const EdgeInsets.only(
                  bottom: 4,
                  left: 1,
                ),
                enabled: true,
                suffix: suffix,
                isDense: true,
                isCollapsed: true,
                fillColor: Colors.transparent,
                hintText: hintText,
                filled: true,
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffE7E7E7)),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffE7E7E7)),
                ),
                disabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffE7E7E7)),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffE7E7E7)),
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xffE7E7E7)),
                ),
              ),
          keyboardType: textInputType,
          validator: validator,
        ),
      ],
    );
  }
}
