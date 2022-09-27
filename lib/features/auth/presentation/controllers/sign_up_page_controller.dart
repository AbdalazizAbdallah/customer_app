import 'package:customer_app/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  late GlobalKey<FormState> formKey;

  late TextEditingController nameEditingController;
  late TextEditingController mobileEditingController;
  late TextEditingController emailEditingController;
  late TextEditingController passwordEditingController;
  late TextEditingController confirmPasswordEditingController;

  void signUp() {
    if (formKey.currentState!.validate()) {
      _registerUser(
        nameEditingController.text,
        mobileEditingController.text,
        emailEditingController.text,
        passwordEditingController.text,
      );
    }
  }

  void _registerUser(
      String name, String mobile, String email, String password) async {
    // TODO (LATER) : _registerUser
    Helpers.showWaitDialog();
    await Future.delayed(
      const Duration(seconds: 3),
      () => Get.back(),
    );
    Get.showSnackbar(
      const GetSnackBar(
        message: 'Registration successfully',
        duration: Duration(seconds: 3),
      ),
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    formKey = GlobalKey<FormState>();
    nameEditingController = TextEditingController();
    mobileEditingController = TextEditingController();
    emailEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
    confirmPasswordEditingController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    nameEditingController.dispose();
    mobileEditingController.dispose();
    emailEditingController.dispose();
    passwordEditingController.dispose();
    confirmPasswordEditingController.dispose();
    super.onClose();
  }
}
