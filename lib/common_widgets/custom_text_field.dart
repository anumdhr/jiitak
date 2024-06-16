import 'package:flutter/material.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

//
//
// class CustomTextField extends StatelessWidget {
//   const CustomTextField({
//     Key? key,
//     this.onTap,
//     required this.hintText,
//     this.validate = true,
//     this.icon,
//     this.backgroundColor,
//     this.width,
//     this.suffixIcon,
//     this.onChange,
//     this.hintTextColor,
//     this.validator,
//     this.initialValue,
//     this.textInputType,
//     this.controller,
//     this.enabled = true,
//     this.inputDecoration,
//     this.autoFocus = false,
//     this.headingText,
//     this.suffixText,
//     this.readOnly,
//   }) : super(key: key);
//
//   final String hintText;
//   final bool? validate;
//   final Icon? icon;
//   final Widget? suffixIcon;
//   final Color? backgroundColor;
//   final void Function()? onTap;
//   final double? width;
//   final Color? hintTextColor;
//   final FormFieldValidator<String>? validator;
//   final TextInputType? textInputType;
//   final String? initialValue;
//   final TextEditingController? controller;
//   final ValueChanged? onChange;
//   final bool enabled;
//   final InputDecoration? inputDecoration;
//   final bool autoFocus;
//   final String? headingText;
//   final String? suffixText;
//   final bool? readOnly;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         headingText == null
//             ? const SizedBox()
//             : Text(headingText!,
//             ),
//         Container(
//
//           child: SizedBox(
//             height: 30,
//             child: TextFormField(
//               readOnly: readOnly ?? false,
//               initialValue: initialValue,
//               autofocus: autoFocus,
//               onChanged: onChange,
//               controller: controller,
//               onTap: onTap,
//               enabled: enabled,
//               textInputAction: TextInputAction.next,
//               decoration: inputDecoration ??
//                   InputDecoration(
//                     suffixText: suffixText,
//
//                     suffixIcon: Padding(padding: const EdgeInsets.only(left: 20), child: suffixIcon),
//
//                     enabled: true,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(6),
//                       borderSide:  BorderSide(
//                         width: 1,
//                         color: validate!  ? Colors.transparent: Colors.red  ,
//
//                       ),
//                     ),
//
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                       borderSide:  BorderSide(
//                           width: 1,
//                           // style: BorderStyle.none,
//                           color: Colors.black
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                       borderSide:  BorderSide(
//                         width: 1,
//                         color: validate!  ? Colors.transparent: Colors.red  ,
//                       ),
//                     ),
//                     contentPadding: const EdgeInsets.only(left: 2, right: 1, top: 7, bottom: 7),
//                     fillColor: Colors.transparent,
//                     hintText: hintText,
//                     filled: true,
//                     // border: InputBorder.none,
//                   ),
//               keyboardType: textInputType,
//               validator: validator,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.headingText, required this.hintText});

  final String headingText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(text: headingText,style: TextStyle(color: Color(0xff4B4948),
          fontSize: 14,
          fontWeight: FontWeight.w500), children: [
            TextSpan(
              text: "*",
              style: TextStyle(color: Colors.red),
            ),
          ]),
        ),
        // Text("店舗名*"),
        sboxH10,
        SizedBox(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 16, right: 1, top: 7, bottom: 7),
                hintText: hintText,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE8E8E8)),
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
        )
      ],
    );
  }
}
