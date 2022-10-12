import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.title,
    required this.count,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  final String title;
  final int count;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          side: BorderSide.none,
        ),
        minimumSize: const Size(
          double.infinity,
          double.infinity,
        ),
      ),
      onPressed: () {},
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: StylesApp.subtitle1.copyWith(
                color: textColor,
              ),
            ),
            SizedBox(
              width: SizesApp.r10,
            ),
            Text(
              '($count)',
              style: StylesApp.subtitle1.copyWith(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
