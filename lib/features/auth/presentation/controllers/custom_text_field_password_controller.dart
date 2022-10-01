import 'package:get/get.dart';

class CustomTextFieldPasswordController extends GetxController {
  bool isVisiable = true;

  changeVisiable() {
    isVisiable = !isVisiable;
    update();
  }
}
