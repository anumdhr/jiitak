import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/controller/check_box_controller.dart';

import '../../../../common_widgets/custom_text_widget.dart';

class MultipleChooseBar extends StatelessWidget {
  MultipleChooseBar({super.key});

  final CheckboxController controller = Get.put(CheckboxController());
  final List<String> labels = [
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
    '日',
    '祝',
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: const TextSpan(
                  text: "定休日",
                  style: TextStyle(
                    color: Color(0xff4B4948),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                TextSpan(
                  text: "*",
                  style: TextStyle(color: Color(0xffEB5308), fontWeight: FontWeight.w500),
                ),
              ])),
          SizedBox(
            height: 60,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                // crossAxisSpacing: 1,
                childAspectRatio: 2 / 1,
                // mainAxisSpacing: 8,
              ),
              itemCount: controller.checkboxes.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      side: const BorderSide(
                        color: Color(0xffE8E8E8),
                        width: 1.5,
                      ),
                      focusColor: const Color(0xffEE7D42),
                      activeColor: const Color(0xffEE7D42),
                      value: controller.checkboxes[index],
                      onChanged: (value) {
                        controller.toggleCheckbox(index);
                      },
                    ),
                    CustomText(
                      labels[index],
                      style: const TextStyle(
                        color: Color(0xff4B4948),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ), // Use custom labels
                  ],
                );
              },
            ),
          ),
        ],
      );
    });
  }
}
