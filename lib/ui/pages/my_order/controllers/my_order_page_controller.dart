import 'package:customer_app/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Pages {
  complete,
  pending,
}

class MyOrderPageController extends GetxController {
  Pages currentPage = Pages.complete;

  Color backgroundColorComplete = ColorsApp.primary;
  Color textColorComplete = ColorsApp.white;
  Color backgroundColorPending = ColorsApp.white;
  Color textColorPending = ColorsApp.grey;

  void completePage() {
    currentPage = Pages.complete;
    backgroundColorComplete = ColorsApp.primary;
    textColorComplete = ColorsApp.white;
    backgroundColorPending = ColorsApp.white;
    textColorPending = ColorsApp.grey;
    update();
  }

  void pendingPage() {
    currentPage = Pages.pending;
    backgroundColorComplete = ColorsApp.white;
    textColorComplete = ColorsApp.grey;
    backgroundColorPending = ColorsApp.primary;
    textColorPending = ColorsApp.white;
    update();
  }
}
