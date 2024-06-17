import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_widget.dart';

class StampTopBar extends StatelessWidget {
  const StampTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: const Color(0xff949EFF),
              child: SvgPicture.asset(
                "assets/images/icon.svg",
                fit: BoxFit.cover,
                color: Colors.white,
              ),
            ),
          ),
          CustomText(
            "スタンプカード詳細",
            style: const TextStyle(
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                color: const Color(0xffFFFFFF),
                "assets/images/minus-circle.svg",

                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
