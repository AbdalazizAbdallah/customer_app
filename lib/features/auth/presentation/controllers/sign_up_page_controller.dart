import 'package:customer_app/core/errors/failure.dart';
import 'package:customer_app/core/utils/helpers.dart';
import 'package:customer_app/features/auth/domain/entities/user_to_register.dart';
import 'package:customer_app/features/auth/domain/usecases/register_user_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  late GlobalKey<FormState> formKey;

  late TextEditingController nameEditingController;
  late TextEditingController mobileEditingController;
  late TextEditingController emailEditingController;
  late TextEditingController passwordEditingController;
  late TextEditingController confirmPasswordEditingController;

  final RegisterUserUseCase _registerUserUseCase;

  SignUpPageController(this._registerUserUseCase);

  void signUp() {
    if (formKey.currentState!.validate()) {
      UserForRegister userForRegister = UserForRegister(
        name: nameEditingController.text,
        email: emailEditingController.text,
        mobile: mobileEditingController.text,
        password: passwordEditingController.text,
      );

      _registerUser(userForRegister);
    }
  }

  void _registerUser(UserForRegister userForRegister) async {
    // TODO (LATER) : _registerUser
    Helpers.showWaitDialog();
    Either<Failure, Unit> result =
        await _registerUserUseCase.call(userForRegister);

    result.fold(
      (Failure failure) {
        Get.back();
        Helpers.showSnackBar(failure.message);
      },
      (Unit unit) {
        Get.back();
        Helpers.showSnackBar('registration_successfully'.tr);
      },
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
