import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/modules/pages/home_page/controller/tab-switch_controller.dart';
import 'package:jiitak_ui_assignment/modules/pages/home_page/search_screen.dart';

class HomeScreen extends StatelessWidget {
  final BottomNavController _controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        body: Obx(() {
          switch (_controller.selectedIndex.value) {
            case 0:
              return const SearchScreen();
            case 1:
              return const Center(child: Text('Search Screen'));
            case 2:
              return const Center(child: Text('Floating Button Screen'));
            case 3:
              return const Center(child: Text('Notifications Screen'));
            case 4:
              return const Center(child: Text('Profile Screen'));
            default:
              return const Center(child: Text('Home Screen'));
          }
        }),
        bottomNavigationBar: CustomBottomAppBar(),
      ),
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  final BottomNavController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildTabItem(index: 0, assetName: "assets/images/search.svg", label: 'さがす'),
                buildTabItem(index: 1, assetName: "assets/images/office bag.svg", label: 'お仕事'),
                buildTabItem(index: 2, label: 'お仕事'),
                buildTabItem(index: 3, assetName: "assets/images/typing.svg", label: 'チャット'),
                buildTabItem(index: 4, assetName: "assets/images/profile.svg", label: 'マイページ'),
              ],
            ),
          ),
          Positioned(
              bottom: 35,
              left: MediaQuery.of(context).size.width / 2 - 50,
              right: MediaQuery.of(context).size.width / 2 - 40,
              child: CircleAvatar(
                backgroundColor: const Color(0xffFAAA14),
                radius: 27,
                child: SvgPicture.asset("assets/images/scan-line.svg"),
              ))
        ],
      ),
    );
  }

  Widget buildTabItem({required int index, String? assetName, required String label}) {
    return Obx(() {
      final isSelected = _controller.selectedIndex.value == index;
      return GestureDetector(
        onTap: () {
          _controller.changeTabIndex(index);
        },
        child: SizedBox(
          height: 60,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              assetName != null
                  ? SvgPicture.asset(
                      assetName,
                      color: isSelected ? const Color(0xffFAAA14) : Colors.grey,
                    )
                  : const SizedBox(
                      height: 20,
                    ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected ? const Color(0xffFAAA14) : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
