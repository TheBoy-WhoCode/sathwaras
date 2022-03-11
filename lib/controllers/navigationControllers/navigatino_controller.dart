import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentIndex = 1.obs;

  void setCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
