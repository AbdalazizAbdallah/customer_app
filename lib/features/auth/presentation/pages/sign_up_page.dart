import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/widgets/custom_button_widget.dart';
import 'package:customer_app/core/widgets/dialog_wait.dart';
import 'package:customer_app/features/auth/presentation/controllers/custom_text_field_password_controller.dart';
import 'package:customer_app/features/auth/presentation/widgets/custom_text_field_password.dart';
import 'package:customer_app/features/auth/presentation/widgets/custom_text_field_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.create(
      () => CustomTextFieldPasswordController(),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizesApp.r40),
      child: Column(
        children: [
          CustomTextFieldWidget(
            controllerTextField: TextEditingController(),
            hintText: 'name'.tr,
            prefixIcon: Icons.person,
            myKeyboardType: TextInputType.name,
          ),
          SizedBox(
            height: SizesApp.r10,
          ),
          CustomTextFieldWidget(
            controllerTextField: TextEditingController(),
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
            controllerTextField: TextEditingController(),
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
            controllerTextField: TextEditingController(),
            hintText: 'password'.tr,
          ),
          SizedBox(
            height: SizesApp.r10,
          ),
          CustomTextFieldPassword(
            controllerTextField: TextEditingController(),
            hintText: 'confirm_password'.tr,
          ),
          SizedBox(
            height: SizesApp.r30,
          ),
          CustomButtonWidget(
            title: 'sign_up'.tr,
            onPressed: () {
              Get.dialog(
                const DialogWait(),
              );
              Future.delayed(
                const Duration(seconds: 3),
                () => Get.back(),
              );
            },
          ),
          SizedBox(
            height: SizesApp.r30,
          ),
        ],
      ),
    );
  }
}
