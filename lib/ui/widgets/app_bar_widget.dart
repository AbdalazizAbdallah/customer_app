import 'package:customer_app/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

AppBar getAppBar({required String title}) {
  return AppBar(
    title: Text(title),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: () => Get.back(),
      color: ColorsApp.primary,
    ),
  );
}
