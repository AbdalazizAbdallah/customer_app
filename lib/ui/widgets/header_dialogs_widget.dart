import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:flutter/material.dart';

class HeaderDialogsWidget extends StatelessWidget {
  const HeaderDialogsWidget({
    Key? key,
    required this.childWidget,
  }) : super(key: key);
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizesApp.r43,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: ColorsApp.black.withOpacity(0.10),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(SizesApp.r2),
              topLeft: Radius.circular(SizesApp.r2),
              bottomLeft: Radius.circular(SizesApp.r40),
              bottomRight: Radius.circular(SizesApp.r40),
            )),
        child: Center(
          child: childWidget,
        ),
      ),
    );
  }
}
