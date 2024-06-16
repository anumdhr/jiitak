import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_widget.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

class TimeSelection extends StatelessWidget {
  const TimeSelection({super.key, required this.headingText, required this.startingText, required this.endingText, this.svgImage1, this.svgImage2});

  final String headingText;
  final String startingText;
  final String endingText;
  final String? svgImage1;
  final String? svgImage2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: headingText,
                style: const TextStyle(
                  color: Color(0xff4B4948),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: const [
              TextSpan(
                text: "*",
                style: TextStyle(color: Color(0xffEB5308), fontWeight: FontWeight.w500),
              ),
            ])),
        sboxH10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: const Color(0xffE8E8E8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    startingText,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff454545),
                    ),
                  ),
                  sboxW10,
                  svgImage1 != null
                      ? SvgPicture.asset(
                          svgImage1!,
                          color: const Color(0xffC7C4C0),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            CustomText(
              "~",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Color(0xff4B4948),
              ),
            ),
            Container(
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: const Color(0xffE8E8E8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    endingText,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff454545),
                    ),
                  ),
                  sboxW6,
                  svgImage2 != null
                      ? SvgPicture.asset(
                          svgImage2!,
                          color: const Color(0xffC7C4C0),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
