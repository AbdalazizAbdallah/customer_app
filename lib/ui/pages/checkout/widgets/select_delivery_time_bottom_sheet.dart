import 'dart:developer';

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/core/widgets/custom_button_widget.dart';
import 'package:customer_app/ui/pages/checkout/controllers/delivery_time_bottom_controller.dart';
import 'package:customer_app/ui/pages/checkout/widgets/triangle_pointer.dart';
import 'package:customer_app/ui/widgets/header_dialogs_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'delivery_location_bottom_sheet.dart';

class SelectDeliveryTimeBottomSheet extends StatelessWidget {
  const SelectDeliveryTimeBottomSheet({
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
              'Delivary Time',
              style: StylesApp.headline5.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizesApp.r30,
              ),
              child: GetBuilder<DeliveryTimeBottomController>(
                  init: DeliveryTimeBottomController(),
                  builder: (deliveryTimeBottomController) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            splashColor: null,
                            onTap: () {
                              deliveryTimeBottomController.makeTodayActive();
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Today',
                                  textAlign: TextAlign.center,
                                  style: StylesApp.headline6.copyWith(
                                    color: deliveryTimeBottomController
                                        .todayTextColor,
                                    fontWeight: deliveryTimeBottomController
                                                .currentSelectText ==
                                            TextSelectionEnum.todayText
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: SizesApp.r16),
                                  child: SizedBox(
                                    height: SizesApp.r2,
                                    width: SizesApp.doubleInfinity,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: deliveryTimeBottomController
                                            .todayTextColor,
                                        borderRadius: BorderRadius.circular(
                                          SizesApp.r2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: null,
                            onTap: () {
                              deliveryTimeBottomController.makeTomorrowActive();
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Towmoro',
                                  textAlign: TextAlign.center,
                                  style: StylesApp.headline6.copyWith(
                                    color: deliveryTimeBottomController
                                        .tomorrowTextColor,
                                    fontWeight: deliveryTimeBottomController
                                                .currentSelectText ==
                                            TextSelectionEnum.tomorrowText
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: SizesApp.r16),
                                  child: SizedBox(
                                    height: SizesApp.r2,
                                    width: SizesApp.doubleInfinity,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: deliveryTimeBottomController
                                            .tomorrowTextColor,
                                        borderRadius: BorderRadius.circular(
                                          SizesApp.r2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }),
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
              children: [
                Text(
                  'Aspn',
                  style: StylesApp.headline6.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ...List<Widget>.generate(
                  5,
                  (int index) {
                    return Center(
                      child: Text(
                        DateFormat('hh:mm').format(
                            DateTime.now().add(Duration(minutes: index * 15))),
                        style: StylesApp.headline6,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizesApp.r30,
              ),
              child: CustomButtonWidget(
                title: 'next'.tr,
                onPressed: () {
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
                      heightFactor: 0.8,
                      child: DeliveryLocationBottomSheet(),
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
