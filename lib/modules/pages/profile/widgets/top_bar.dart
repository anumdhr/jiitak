import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_widget.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: Color(0xffE8E8E8),
              ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: CircleAvatar(
              backgroundColor: const Color(0xff8C817B).withOpacity(0.10),
              child: SvgPicture.asset(
                "assets/images/icon.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          CustomText(
            "店舗プロフィール編集",
            style: const TextStyle(
              color: Color(0xff4B4948),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    color: const Color(0xff4B4948),
                    "assets/images/notification.svg",
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  right: 10,
                  top: 10,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: const Color(0xffEE7D42),
                    child: CustomText(
                      "99+",
                      style: const TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 6.95,
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
