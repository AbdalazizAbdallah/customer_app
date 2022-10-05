import 'package:customer_app/core/errors/failure.dart';
import 'package:customer_app/core/utils/helpers.dart';
import 'package:customer_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  late GlobalKey<FormState> formKey;

  late TextEditingController emailEditingController;
  late TextEditingController passwordEditingController;

  bool rememberMeStatus = false;

  final LoginUseCase _loginUseCase;

  LoginPageController(this._loginUseCase);

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
    Helpers.showWaitDialog();
    Either<Failure, Unit> result = await _loginUseCase.call(email, password);
    result.fold(
      (Failure failure) {
        Get.back();
        Helpers.showSnackBar(failure.message);
      },
      (Unit unit) {
        Get.back();
        Helpers.showSnackBar('login_successfully'.tr);
      },
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
    formKey = GlobalKey<FormState>();
    emailEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.onClose();
  }
}
