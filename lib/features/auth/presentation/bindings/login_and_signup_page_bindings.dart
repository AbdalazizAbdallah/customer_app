import 'package:customer_app/features/auth/presentation/controllers/custom_text_field_password_controller.dart';
import 'package:customer_app/features/auth/presentation/controllers/login_and_signup_page_controller.dart';
import 'package:customer_app/features/auth/presentation/controllers/login_page_controller.dart';
import 'package:customer_app/features/auth/presentation/controllers/sign_up_page_controller.dart';
import 'package:get/get.dart';

class LoginAndSignupPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginPageController());
    Get.create(() => CustomTextFieldPasswordController());
    Get.lazyPut(() => SignUpPageController());
    Get.lazyPut(() => LoginAndSignUpPageController());
  }
}
