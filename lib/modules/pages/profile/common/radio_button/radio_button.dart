import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/common/radio_button/controller.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

class RectangularRadioButtons extends StatelessWidget {
  RectangularRadioButtons({super.key, required this.headingText, this.checkBox1Text, this.checkBox2Text});

  final RadioController controller = Get.put(RadioController());
  final String headingText;
  final String? checkBox1Text;
  final String? checkBox2Text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: headingText,
                style: TextStyle(
                  color: Color(0xff4B4948),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: [
              TextSpan(
                text: "*",
                style: TextStyle(color: Color(0xffEB5308), fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ])),
        sboxH4,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _buildRectangularRadioButton(1, checkBox1Text ?? ''),
            SizedBox(width: 20), // Space between buttons
            _buildRectangularRadioButton(2, checkBox2Text ?? ''),
          ],
        ),
      ],
    );
  }

  Widget _buildRectangularRadioButton(int value, String text) {
    return GestureDetector(
      onTap: () {
        controller.setSelectedValue(value);
      },
      child: Obx(() {
        return Row(
          children: <Widget>[
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: controller.selectedValue.value == value ? Color(0xffEE7D42) : Colors.white,
                border: Border.all(
                  color: controller.selectedValue.value == value ? Color(0xffEE7D42) : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: controller.selectedValue.value == value ? Icon(Icons.check, size: 12.0, color: Colors.white) : null,
            ),
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff4B4948),
              ),
            ),
          ],
        );
      }),
    );
  }
}
