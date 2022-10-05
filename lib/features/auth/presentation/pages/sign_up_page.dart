import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/utils/helpers.dart';
import 'package:customer_app/core/widgets/custom_button_widget.dart';
import 'package:customer_app/features/auth/presentation/controllers/sign_up_page_controller.dart';
import 'package:customer_app/features/auth/presentation/widgets/custom_text_field_password.dart';
import 'package:customer_app/features/auth/presentation/widgets/custom_text_field_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class SignUpPage extends GetView<SignUpPageController> {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizesApp.r40),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomTextFieldWidget(
              controllerTextField: controller.nameEditingController,
              hintText: 'name'.tr,
              prefixIcon: Icons.person,
              myKeyboardType: TextInputType.name,
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            CustomTextFieldWidget(
              controllerTextField: controller.mobileEditingController,
              hintText: 'mobile'.tr,
              prefixIcon: Icons.phone,
              myKeyboardType: TextInputType.phone,
              inputFormatter: [
                PhoneInputFormatter(
                  defaultCountryCode: 'IL',
                  allowEndlessPhone: true,
                )
              ],
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            CustomTextFieldWidget(
              controllerTextField: controller.emailEditingController,
              hintText: 'email'.tr,
              prefixIcon: Icons.email,
              myKeyboardType: TextInputType.emailAddress,
              validatorFunction: (value) {
                if (value != null && !EmailValidator.validate(value)) {
                  return 'invalid_email'.tr;
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            CustomTextFieldPassword(
              controllerTextField: controller.passwordEditingController,
              hintText: 'password'.tr,
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            CustomTextFieldPassword(
              controllerTextField: controller.confirmPasswordEditingController,
              hintText: 'confirm_password'.tr,
              validatorFunction: (value) {
                if (value != null &&
                    value != controller.passwordEditingController.text) {
                  return 'password_not_matching'.tr;
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: SizesApp.r30,
            ),
            CustomButtonWidget(
              title: 'sign_up'.tr,
              onPressed: () {
                Helpers.removeFocus(context);
                controller.signUp();
              },
            ),
            SizedBox(
              height: SizesApp.r30,
            ),
          ],
        ),
      ),
    );
  }
}
