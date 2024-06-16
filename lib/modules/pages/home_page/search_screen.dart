import 'package:flutter/material.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_widget.dart';

import '../../../utils/customized_sized_box.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: '北海道, 札幌市',
                        hintStyle: TextStyle(
                          color: Color(0xff303030),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        enabled: true,
                        fillColor: Color(0xffF7F7F7),
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 11, horizontal: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/menu.png',
                      height: 24,
                      width: 24,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xffEE5F40),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            sboxH12,
            ColoredBox(
              color: const Color(0xffFAFAFA),
              child: Column(
                children: [
                  Container(
                    height: 33,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xffFAAA14),
                          const Color(0xffFFD78D).withOpacity(0.52),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: Center(
                      child: CustomText(
                        '2022年 5月 26日（木）',
                        style: const TextStyle(
                          color: Color(0xff303030),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.5),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            calenders.length,
                            (index) {
                              return Container(
                                height: 67,
                                width: 44,
                                margin: index != 0 ? const EdgeInsets.only(left: 6) : EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  color: index == 0 ? const Color(0xffFAAA14) : Colors.transparent,
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      calenders[index].name,
                                      style: const TextStyle(
                                        color: Color(0xff303030),
                                      ),
                                    ),
                                    CustomText(
                                      calenders[index].date,
                                      style: const TextStyle(
                                        color: Color(0xff303030),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        ...List.generate(
                          postItems.length,
                          (index) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 16.5),
                              padding: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffFFFFFF),
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Image.asset(
                                        postItems[index].imageUrl,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      Positioned(
                                        bottom: 7,
                                        left: -7,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(3),
                                            color: const Color(0xffFF6262),
                                          ),
                                          child: Center(
                                            child: CustomText(
                                              '本日まで',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 19),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                                            style: TextStyle(
                                              color: Color(0xff303030),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 130,
                                              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                color: const Color(0xffEEAB40).withOpacity(0.10),
                                              ),
                                              child: Center(
                                                child: CustomText(
                                                  '介護付き有料老人ホーム',
                                                  style: TextStyle(
                                                    color: Color(0xffFAAA14),
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CustomText(
                                              '¥ 6,000',
                                              style: TextStyle(
                                                color: Color(0xff303030),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        ),
                                        sboxH15,
                                        CustomText(
                                          '5月 31日（水）08 : 00 ~ 17 : 00',
                                          style: TextStyle(
                                            color: Color(0xff303030),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        sboxH8,
                                        CustomText(
                                          '北海道札幌市東雲町3丁目916番地17号',
                                          style: TextStyle(
                                            color: Color(0xff303030),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        sboxH8,
                                        CustomText(
                                          '交通費 300円',
                                          style: const TextStyle(
                                            color: Color(0xff303030),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        sboxH8,
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomText(
                                              '住宅型有料老人ホームひまわり倶楽部',
                                              style: TextStyle(
                                                color: const Color(0xff303030).withOpacity(0.35),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            sboxH10,
                                            Icon(
                                              Icons.favorite_border_outlined,
                                              color: const Color(0xff303030).withOpacity(0.15),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: const CircleAvatar(
        radius: 25,
        backgroundColor: Color(0xffffffff),
        child: Icon(
          Icons.location_on_outlined,
          color: Color(0xff303030),
        ),
      ),
    );
  }
}

class Calender {
  String name;
  String date;

  Calender({required this.name, required this.date});
}

List<Calender> calenders = [
  Calender(name: '木', date: '26'),
  Calender(name: '金', date: '27'),
  Calender(name: '土', date: '28'),
  Calender(name: '日', date: '29'),
  Calender(name: '月', date: '30'),
  Calender(name: '火', date: '31'),
  Calender(name: '水', date: '1'),
];

class PostItem {
  String imageUrl;

  //...........

  PostItem({required this.imageUrl});
}

List<PostItem> postItems = [
  PostItem(imageUrl: 'assets/images/frontimg.png'),
  PostItem(imageUrl: 'assets/images/age.png'),
  PostItem(imageUrl: 'assets/images/age.png'),
  PostItem(imageUrl: 'assets/images/age.png'),
  PostItem(imageUrl: 'assets/images/age.png'),
];
