import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/modules/pages/profile/controller/check_box_controller.dart';

class MultipleChooseBar extends StatelessWidget {
  final CheckboxController controller = Get.put(CheckboxController());
  final List<String> labels = [
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
    '日',
    '祝',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          return SizedBox(
            height: 300,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of columns
                crossAxisSpacing: 10.0, // Space between columns
                mainAxisSpacing: 10.0, // Space between rows
              ),
              itemCount: controller.checkboxes.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: controller.checkboxes[index],
                      onChanged: (value) {
                        controller.toggleCheckbox(index);
                      },
                    ),
                    Text(labels[index]), // Use custom labels
                  ],
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
