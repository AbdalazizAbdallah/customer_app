import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.myKeyboardType,
    required this.controllerTextField,
    this.validatorFunction = validateFunctionIsNotEmpty,
    this.myTextInputAction = TextInputAction.next,
  }) : super(key: key);

  final String hintText;
  final IconData prefixIcon;
  final TextInputAction myTextInputAction;
  final TextInputType myKeyboardType;
  final TextEditingController? controllerTextField;
  final String? Function(String?)? validatorFunction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerTextField,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: ColorsApp.primary,
        ),
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
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: myKeyboardType,
      validator: validatorFunction,
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
