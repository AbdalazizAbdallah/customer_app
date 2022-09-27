import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/features/auth/presentation/controllers/custom_text_field_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFieldPassword extends StatelessWidget {
  const CustomTextFieldPassword({
    Key? key,
    required this.hintText,
    required this.controllerTextField,
    this.validatorFunction = validateFunctionIsNotEmpty,
    this.myTextInputAction = TextInputAction.next,
  }) : super(key: key);

  final String hintText;
  final TextInputAction myTextInputAction;
  final TextEditingController? controllerTextField;
  final String? Function(String?)? validatorFunction;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomTextFieldPasswordController>(
      builder: (controller) {
        return TextFormField(
          controller: controllerTextField,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: ColorsApp.primary,
            ),
            suffixIcon: controller.isVisiable
                ? InkWell(
                    onTap: () => controller.changeVisiable(),
                    child: const Icon(Icons.visibility))
                : InkWell(
                    onTap: () => controller.changeVisiable(),
                    child: const Icon(Icons.visibility_off)),
            hintText: hintText,
            hintStyle: StylesApp.subtitle2,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(SizesApp.r5),
            ),
            filled: true,
            fillColor: ColorsApp.greyTooLight,
          ),
          textInputAction: myTextInputAction,
          obscureText: controller.isVisiable,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.visiblePassword,
          validator: validatorFunction,
        );
      },
    );
  }
}

String? validateFunctionIsNotEmpty(String? value) {
  if (value != null && value.isEmpty) {
    return 'required'.tr;
  } else {
    return null;
  }
}
