import 'package:customer_app/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Pages {
  login,
  signup,
}

class LoginAndSignUpPageController extends GetxController {
  Pages currentPage = Pages.login;

  Color backgroundColorLogin = ColorsApp.primary;
  Color textColorLogin = ColorsApp.white;
  Color backgroundColorSignUp = ColorsApp.greyTooLight;
  Color textColorSignUp = ColorsApp.grey;

  void signUpPage() {
    currentPage = Pages.signup;
    backgroundColorSignUp = ColorsApp.primary;
    textColorSignUp = ColorsApp.white;
    backgroundColorLogin = ColorsApp.greyTooLight;
    textColorLogin = ColorsApp.grey;
    update();
  }

  void loginPage() {
    currentPage = Pages.login;
    backgroundColorLogin = ColorsApp.primary;
    textColorLogin = ColorsApp.white;
    backgroundColorSignUp = ColorsApp.greyTooLight;
    textColorSignUp = ColorsApp.grey;
    update();
  }
}
