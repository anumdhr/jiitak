import 'package:flutter/material.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

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
          text: TextSpan(text: headingText, style: const TextStyle(color: Color(0xff4B4948), fontSize: 14, fontWeight: FontWeight.w500), children: const [
            TextSpan(
              text: "*",
              style: TextStyle(color: Color(0xffEB5308), fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ]),
        ),
        sboxH10,
        SizedBox(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 16, right: 1, top: 7, bottom: 7),
              hintText: hintText,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE8E8E8)),
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE8E8E8)),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE8E8E8)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        )
      ],
    );
  }
}
