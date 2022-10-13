import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget2 extends StatelessWidget {
  const CustomElevatedButtonWidget2(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizesApp.r10),
          side: BorderSide(
            color: ColorsApp.greyTooLight,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: StylesApp.caption.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
