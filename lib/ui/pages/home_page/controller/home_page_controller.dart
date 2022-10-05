import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  late PageController pageController;
  late GlobalKey<ScaffoldState> scaffoldKey;

  @override
  void onInit() {
    pageController = PageController();
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
