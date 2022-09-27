import 'package:customer_app/core/utils/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  late GlobalKey<FormState> formKey;

  late TextEditingController emailEditingController;
  late TextEditingController passwordEditingController;

  bool rememberMeStatus = false;

  void changeStatus() {
    rememberMeStatus = !rememberMeStatus;
    update(['remember_me']);
  }

  login() {
    if (formKey.currentState!.validate()) {
      _loginUser(emailEditingController.text, passwordEditingController.text);
    }
  }

  _loginUser(String email, String password) async {
    // TODO (LATER) : _loginUser
    Helpers.showWaitDialog();
    await Future.delayed(
      const Duration(seconds: 3),
      () => Get.back(),
    );
    Get.showSnackbar(
      const GetSnackBar(
        message: 'login successfully',
        duration: Duration(seconds: 3),
      ),
    );
  }

  void getNewPassword() {
    // TODO (LATER) : getNewPassword()
    // Just for test
    Get.showSnackbar(
      const GetSnackBar(
        message: 'Check your email',
        duration: Duration(seconds: 3),
      ),
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    formKey = GlobalKey<FormState>();
    emailEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.onClose();
  }
}
