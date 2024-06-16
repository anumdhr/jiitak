import 'package:flutter/material.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_widget.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

class CategoryDropDown extends StatelessWidget {
  const CategoryDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            text: "料理カテゴリー",
            style: TextStyle(
              color: Color(0xff4B4948),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(
                text: "*",
                style: TextStyle(color: Color(0xffEB5308), fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        sboxH5,
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color(0xffE8E8E8),
            ),
            color: Colors.white24,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "料理カテゴリー選択",
                  style: TextStyle(
                    color: Color(0xffC7C4C0),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Spacer(),
              PopupMenuButton(
                offset: const Offset(10, 0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 22,
                  color: Color(0xffC7C4C0),
                ),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: CustomText(
                        "カテゴリーを選択",
                        style: const TextStyle(color: Colors.black),
                      ),
                      value: "カテゴリーを選択",
                    ),
                  ];
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
