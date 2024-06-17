import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_widget.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.headingText,
    required this.leadingText,
    required this.suffixText,
  });

  final String headingText;
  final String leadingText;
  final String suffixText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: CustomText(
            headingText,
            style: const TextStyle(
              color: Color(0xffB5B5B5),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                leadingText,
                style: const TextStyle(
                  color: Color(0xff454545),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              CustomText(
                suffixText,
                style: const TextStyle(
                  color: Color(0xff454545),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        sboxH2,
        Container(
          width: Get.width,
          height: 1,
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE7E7E7),
              )),
        )
      ],
    );
  }
}
