import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/my_order/widgets/custom_elevated_button_widget2.dart';
import 'package:customer_app/ui/pages/view_details_order/view_details_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardOfOrderWidget extends StatelessWidget {
  const CardOfOrderWidget({
    Key? key,
    required this.textPrimaryButton,
    required this.onPressedPrimary,
  }) : super(key: key);

  final String textPrimaryButton;
  final void Function()? onPressedPrimary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizesApp.r16,
        vertical: SizesApp.r8,
      ),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(SizesApp.r8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Table(
                columnWidths: const {
                  0: FractionColumnWidth(0.30),
                  1: FractionColumnWidth(0.30),
                  2: FractionColumnWidth(0.23),
                  3: FractionColumnWidth(0.18),
                },
                children: [
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'order_number'.tr,
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'the_restaurant'.tr,
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'time_order'.tr,
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'status'.tr,
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          '#0216546',
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.blackLight,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'Alafia',
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.blackLight,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          '03:35 pm',
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.blackLight,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'waiting',
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: SizesApp.r20,
              ),
              Row(
                children: [
                  CustomElevatedButtonWidget2(
                    textColor: ColorsApp.primary,
                    text: textPrimaryButton,
                    onPressed: onPressedPrimary,
                  ),
                  SizedBox(
                    width: SizesApp.r12,
                  ),
                  CustomElevatedButtonWidget2(
                    textColor: ColorsApp.black,
                    text: 'view_details'.tr,
                    onPressed: () {
                      debugPrint('view details');
                      Get.dialog(
                        ViewDetails(),
                      );
                    },
                  ),
                  const Spacer(),
                  Text(
                    '${'number_of_meals'.tr}  (4)',
                    style: StylesApp.caption11.copyWith(
                      color: ColorsApp.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
