import 'package:get/get.dart';

class ButtonNavController extends GetxController {
  var isVisible = false.obs;

  void toggleButton() {
    isVisible.value = !isVisible.value;
  }
}
