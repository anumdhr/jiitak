import 'package:get/get.dart';

class CheckboxController extends GetxController {
  // Create a list to hold the state of each checkbox
  var checkboxes = List<bool>.filled(8, false).obs;

  // Method to toggle the state of a checkbox
  void toggleCheckbox(int index) {
    checkboxes[index] = !checkboxes[index];
  }
}