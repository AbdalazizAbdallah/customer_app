import 'dart:developer';

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/core/widgets/custom_button_widget.dart';
import 'package:customer_app/ui/pages/checkout/widgets/select_delivery_time_bottom_sheet.dart';
import 'package:customer_app/ui/pages/checkout/widgets/triangle_pointer.dart';
import 'package:customer_app/ui/widgets/header_dialogs_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

class SelectRiderTipBottomSheet extends StatelessWidget {
  const SelectRiderTipBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizesApp.r16,
        vertical: SizesApp.r4,
      ),
      child: Column(
        children: [
          HeaderDialogsWidget(
            childWidget: Text(
              'Rider tip',
              style: StylesApp.headline5.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: CupertinoPicker(
              selectionOverlay: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: CustomPaint(
                      painter: TrianglePainter(
                        strokeColor: ColorsApp.greyLight,
                        strokeWidth: 10,
                        paintingStyle: PaintingStyle.fill,
                      ),
                      child: SizedBox(
                        height: SizesApp.r40,
                        width: SizesApp.r10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 65,
                  ),
                  CustomPaint(
                    painter: TrianglePainter(
                      strokeColor: ColorsApp.greyLight,
                      strokeWidth: 10,
                      paintingStyle: PaintingStyle.fill,
                    ),
                    child: SizedBox(
                      height: SizesApp.r40,
                      width: SizesApp.r10,
                    ),
                  ),
                ],
              ),
              itemExtent: 32,
              onSelectedItemChanged: (int index) {
                log('$index');
              },
              children: List<Widget>.generate(
                5,
                (int index) {
                  return Center(
                    child: Text(
                      '${(2.0 * index) + 2} £',
                      style: StylesApp.headline6,
                    ),
                  );
                },
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizesApp.r30,
              ),
              child: CustomButtonWidget(
                title: 'add'.tr,
                onPressed: () {
                  log('add Rider tip');
                  Get.back();
                  Get.bottomSheet(
                    backgroundColor: ColorsApp.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    const FractionallySizedBox(
                      heightFactor: 1,
                      child: SelectDeliveryTimeBottomSheet(),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
