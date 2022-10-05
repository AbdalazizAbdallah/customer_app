import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class FilterTypeWidget extends StatelessWidget {
  const FilterTypeWidget({
    Key? key,
    required this.titleType,
    required this.widget,
    required this.onTap,
    required this.visiable,
    required this.colorText,
  }) : super(key: key);

  final String titleType;
  final Widget widget;
  final bool visiable;
  final Color colorText;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: SizesApp.r10),
      child: InkResponse(
        onTap: onTap,
        child: Column(
          children: [
            Visibility(
              visible: visiable,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Icon(
                Icons.check,
                color: ColorsApp.primary,
              ),
            ),
            SizedBox.square(
              dimension: SizesApp.r75,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorsApp.greyLight,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(SizesApp.r16),
                  child: widget,
                ),
              ),
            ),
            SizedBox(
              height: SizesApp.r5,
            ),
            Text(
              titleType,
              style: StylesApp.subtitle2.copyWith(
                color: colorText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
