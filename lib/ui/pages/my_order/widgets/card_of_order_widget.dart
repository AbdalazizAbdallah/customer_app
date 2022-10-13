import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/my_order/widgets/custom_elevated_button_widget2.dart';
import 'package:flutter/material.dart';

class CardOfOrderWidget extends StatelessWidget {
  const CardOfOrderWidget({
    Key? key,
  }) : super(key: key);

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
                          'Order number',
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'The restaurant',
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'Time order',
                          style: StylesApp.caption11.copyWith(
                            color: ColorsApp.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(SizesApp.r5),
                        child: Text(
                          'status',
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
                    text: 'Path',
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: SizesApp.r12,
                  ),
                  CustomElevatedButtonWidget2(
                    textColor: ColorsApp.primary,
                    text: 'View details',
                    onPressed: () {},
                  ),
                  const Spacer(),
                  Text(
                    'Number of meals (4)',
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
