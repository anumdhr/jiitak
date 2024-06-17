import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_widget.dart';
import 'package:jiitak_ui_assignment/modules/pages/stamp_detail/widget/list_tile_widget.dart';
import 'package:jiitak_ui_assignment/modules/pages/stamp_detail/widget/stamp_top_bar.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

class StampDetailPage extends StatelessWidget {
  const StampDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA8B1FF),
      body: SafeArea(
        child: Column(
          children: [
            const StampTopBar(),
            sboxH10,
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText("Mer キッチン",
                      style: const TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  RichText(
                      text: const TextSpan(
                          text: "現在の獲得数",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                        TextSpan(
                          text: "30 ",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: "個 ",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ])),
                ],
              ),
            ),
            sboxH20,
            Expanded(
              child: Container(
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          top: 30,
                          right: 20,
                        ),
                        child: SizedBox(
                          height: 200,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            separatorBuilder: (context, index) => const SizedBox(
                              width: 5,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: GridView.builder(
                                  itemCount: 15,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, crossAxisSpacing: 15, mainAxisSpacing: 15),
                                  itemBuilder: (context, index) {
                                    return Image.asset(
                                      "assets/images/star.png",
                                      fit: BoxFit.scaleDown,
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 30,
                        ),
                        child: CustomText(
                          "2 / 2枚目",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff454545),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              "スタンプ獲得履歴",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff454545),
                              ),
                            ),
                            sboxH10,
                            const ListTileWidget(
                              headingText: "2021 / 11 / 18",
                              leadingText: "スタンプを獲得しました。",
                              suffixText: "1 個",
                            ),
                            const ListTileWidget(
                              headingText: "2021 / 11 / 17",
                              leadingText: "スタンプを獲得しました。",
                              suffixText: "1 個",
                            ),
                            const ListTileWidget(
                              headingText: "2021 / 11 / 16",
                              leadingText: "スタンプを獲得しました。",
                              suffixText: "1 個",
                            ),
                            const ListTileWidget(
                              headingText: "2021 / 11 / 13",
                              leadingText: "スタンプを獲得しました。",
                              suffixText: "1 個",
                            ),
                            const ListTileWidget(
                              headingText: "2021 / 11 / 12",
                              leadingText: "スタンプを獲得しました。",
                              suffixText: "1 個",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

