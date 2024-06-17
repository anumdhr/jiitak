import 'package:get/get.dart';

class CheckboxController extends GetxController {
  var checkboxes = List<bool>.filled(8, false).obs;

  void toggleCheckbox(int index) {
    checkboxes[index] = !checkboxes[index];
  }
}