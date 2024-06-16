import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

class ProductBar extends StatelessWidget {
  const ProductBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(text: "店舗外観", style: TextStyle(
              color: Color(0xff4B4948),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ), children: const [
          TextSpan(
            text: "*",
            style: TextStyle(color: Color(0xffEB5308),fontSize: 14, fontWeight: FontWeight.w500),
          ),
          TextSpan(
            text: " (最大3枚まで）",
            style: TextStyle(color: Color(0xff9C9896),fontWeight: FontWeight.w400),
          ),
        ])),
        sboxH10,
        Container(
          height: 91,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index < 2) {
                return Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 91,
                        height: 91,
                        child: Image.asset(
                          "assets/images/door.png",
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      top: 10,
                      right:20,
                      child: SvgPicture.asset(
                        color: Color(0xffE8E8E8),
                        "assets/images/cross.svg",
                      ),
                    ),
                  ],
                );
              } else {
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 91,
                    height: 91,
                    child: SvgPicture.asset(
                      "assets/images/AddGallery.svg",
                      fit: BoxFit.fitHeight,
                    ));
              }
            },
          ),
        )
      ],
    );
  }
}
