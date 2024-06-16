import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/common_widgets/custom_text_widget.dart';
import 'package:jiitak_ui_assignment/modules/pages/home_page/home_screen.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/profile.dart';
import 'package:jiitak_ui_assignment/utils/customized_sized_box.dart';

import 'pages/stamp_detail/stamp_detail.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText('Main Screen',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sboxH10,
              CommonNavigateButton(
                buttonText: "Home page",
                onTap: () {
                  Get.to(() => HomeScreen());
                },
              ),
              sboxH10,
              CommonNavigateButton(
                buttonText: "Stamp page",
                onTap: () {
                  Get.to(() => StampDetailPage());
                },
              ),
              sboxH10,
              CommonNavigateButton(
                onTap: () {
                  Get.to(() => ProfilePage());

                },
                buttonText: "Profile page",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommonNavigateButton extends StatelessWidget {
  const CommonNavigateButton({
    super.key,
    required this.buttonText,
    this.onTap,
  });

  final String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xffa8b1ff),
          borderRadius: BorderRadius.circular(10),
        ),
        child: CustomText(buttonText),
      ),
    );
  }
}
