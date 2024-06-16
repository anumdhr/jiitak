import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_field.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/common/common_product.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/widgets/category_dropdown.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/widgets/product_bar.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/widgets/time_selection.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/widgets/top_bar.dart';

import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

import 'common/radio_button/radio_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/ice-cream.png",
      "assets/images/dew.png",
      "assets/images/coke.png",
    ];
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            TopBar(),
            sboxH5,
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    hintText: "Mer キッチン",
                    headingText: "店舗名",
                  ),
                  sboxH10,
                  CustomTextField(
                    hintText: "林田　絵梨花",
                    headingText: "代表担当者名",
                  ),
                  sboxH10,
                  CustomTextField(
                    hintText: "123 - 4567 8910",
                    headingText: "店舗電話番号",
                  ),
                  sboxH10,
                  CustomTextField(
                    hintText: "大分県豊後高田市払田791-13",
                    headingText: "店舗住所",
                  ),
                  sboxH10,
                  SizedBox(
                    height: 219,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Image.asset(
                        "assets/images/pngmap.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  sboxH10,
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductBar(),
                  CommonProductField(),
                  CommonProductField(),
                  CommonProductField(),
                  sboxH10,
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TimeSelection(
                    headingText: "営業時間",
                    startingText: "10 : 00",
                    endingText: "20 : 00",
                    svgImage1: "assets/images/dropdown.svg",
                    svgImage2: "assets/images/dropdown.svg",
                  ),
                  sboxH10,
                  TimeSelection(
                    headingText: "営業時間",
                    startingText: "11 : 00",
                    endingText: "15 : 00",
                    svgImage1: "assets/images/dropdown.svg",
                    svgImage2: "assets/images/dropdown.svg",
                  ),
                  // RegularClosingDay(),
                  sboxH10,
                  CategoryDropDown(),
                  sboxH10,
                  TimeSelection(
                    headingText: "予算",
                    startingText: "¥ 1,000",
                    endingText: "¥ 2,000",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                children: [
                  sboxH10,
                  CustomTextField(
                    hintText: "美味しい！リーズナブルなオムライスランチ！",
                    headingText: "キャッチコピー ",
                  ),
                  sboxH10,
                  CustomTextField(
                    hintText: "40席",
                    headingText: "座席数",
                  ),
                  sboxH10,
                  RectangularRadioButtons(
                    headingText: "喫煙席",
                    checkBox1Text: "有",
                    checkBox2Text: "無",
                  ),
                  sboxH10,
                  RectangularRadioButtons(
                    headingText: "喫煙席",
                    checkBox1Text: "有",
                    checkBox2Text: "無",
                  ),
                  sboxH10,
                  RectangularRadioButtons(
                    headingText: "来店プレゼント",
                    checkBox1Text: "有（最大３枚まで）",
                    checkBox2Text: "無",
                  ),
                  sboxH10,
                  Container(
                    height: 91,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: 91,
                                height: 91,
                                child: SvgPicture.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                )),
                            Positioned(
                              top: 10,
                              right: 20,
                              child: SvgPicture.asset(
                                color: Color(0xffE8E8E8),
                                "assets/images/cross.svg",
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  CustomTextField(
                    hintText: "いちごクリームアイスクリーム, ジュース",
                    headingText: "来店プレゼント名",
                  ),
                  sboxH40,
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffEE7D42),
                            Color(0xffFFC8AB),
                          ]),
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffE8E8E8),
                    ),
                    child: Text(
                      "編集を保存",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
