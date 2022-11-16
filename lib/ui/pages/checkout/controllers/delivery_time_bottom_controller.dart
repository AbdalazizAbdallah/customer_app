import 'dart:developer';

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:flutter/animation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

enum TextSelectionEnum {
  todayText,
  tomorrowText,
}

class DeliveryTimeBottomController extends GetxController {
  Color todayTextColor = ColorsApp.primary;
  Color tomorrowTextColor = ColorsApp.grey;

  TextSelectionEnum currentSelectText = TextSelectionEnum.todayText;

  makeTodayActive() {
    todayTextColor = ColorsApp.primary;
    tomorrowTextColor = ColorsApp.grey;
    currentSelectText = TextSelectionEnum.todayText;
    update();
  }

  makeTomorrowActive() {
    todayTextColor = ColorsApp.grey;
    tomorrowTextColor = ColorsApp.primary;
    currentSelectText = TextSelectionEnum.tomorrowText;
    update();
  }
}
