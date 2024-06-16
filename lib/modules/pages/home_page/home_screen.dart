import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/modules/pages/home_page/controller/tab-switch_controller.dart';
import 'package:jiitak_ui_assignment/modules/pages/home_page/search_screen.dart';

class HomeScreen extends StatelessWidget {
  final BottomNavController _controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Obx(() {
        switch (_controller.selectedIndex.value) {
          case 0:
            return SearchScreen();
          case 1:
            return Center(child: Text('Search Screen'));
          case 2:
            return Center(child: Text('Floating Button Screen'));
          case 3:
            return Center(child: Text('Notifications Screen'));
          case 4:
            return Center(child: Text('Profile Screen'));
          default:
            return Center(child: Text('Home Screen'));
        }
      }),
      bottomNavigationBar: CustomBottomAppBar(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _controller.changeTabIndex(2);
      //   },
      //   child: Icon(Icons.add),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  final BottomNavController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      // shape:
      // notchMargin: 8.0,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildTabItem(index: 0, assetName: "assets/images/search.svg", label: 'さがす'),
              buildTabItem(index: 1, assetName: "assets/images/office bag.svg", label: 'お仕事'),
              buildTabItem(index: 2, label:  'お仕事'),
              buildTabItem(index: 3, assetName: "assets/images/typing.svg", label: 'チャット'),
              buildTabItem(index: 4, assetName: "assets/images/profile.svg", label: 'マイページ'),
            ],
          ),
          Positioned(
              bottom: 25, // Adjust this value to control how much the button floats above the bar
              left: MediaQuery.of(context).size.width / 2 - 65,
              child: CircleAvatar(
                backgroundColor: Color(0xffFAAA14),
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
              assetName != null ?
              SvgPicture.asset(assetName,
                color: isSelected ? Color(0xffFAAA14) : Colors.grey,

              ) : SizedBox(
                height: 20,
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected ? Color(0xffFAAA14) : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
