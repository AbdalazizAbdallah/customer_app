import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/widgets/dialog_wait.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Helpers {
  static void showWaitDialog() {
    Get.dialog(
      const DialogWait(),
    );
  }

  static void removeFocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static void showSnackBar(String messageSnackBar) {
    Get.showSnackbar(
      GetSnackBar(
        message: messageSnackBar,
        duration: const Duration(seconds: 2),
        borderRadius: SizesApp.r16,
      ),
    );
  }
}
