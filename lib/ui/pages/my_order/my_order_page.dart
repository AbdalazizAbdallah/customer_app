import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/my_order/widgets/custom_elevated_button.dart';
import 'package:customer_app/ui/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(title: 'my_order'.tr),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizesApp.r16, vertical: SizesApp.r12),
              child: Card(
                clipBehavior: Clip.hardEdge,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorsApp.greyTooLight,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(SizesApp.r10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        title: 'Complete',
                        backgroundColor: ColorsApp.white,
                        count: 10,
                        textColor: ColorsApp.grey,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        title: 'Pending',
                        backgroundColor: ColorsApp.primary,
                        count: 3,
                        textColor: ColorsApp.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 7,
            child: Container(
              width: double.infinity,
              color: ColorsApp.whiteSuger,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) =>
                    const CardOfPendingOrderWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardOfPendingOrderWidget extends StatelessWidget {
  const CardOfPendingOrderWidget({
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsApp.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(SizesApp.r10),
                            side: BorderSide(
                              color: ColorsApp.greyTooLight,
                            ))),
                    onPressed: () {},
                    child: Text(
                      'Path',
                      style: StylesApp.caption.copyWith(
                        color: ColorsApp.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizesApp.r12,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsApp.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(SizesApp.r10),
                            side: BorderSide(
                              color: ColorsApp.greyTooLight,
                            ))),
                    onPressed: () {},
                    child: Text(
                      'View details',
                      style: StylesApp.caption.copyWith(
                        color: ColorsApp.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
