import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class PageViewItemWidget extends StatelessWidget {
  const PageViewItemWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: EdgeInsets.all(SizesApp.r16),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: widget,
            ),
            SizedBox(
              height: SizesApp.r48,
            ),
            Flexible(
              flex: 1,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(SizesApp.r12),
                  child: Text(
                    'ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium ',
                    textAlign: TextAlign.center,
                    style: StylesApp.body1.copyWith(color: ColorsApp.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
