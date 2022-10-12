import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/ui/pages/my_order/widgets/custom_elevated_button.dart';
import 'package:customer_app/ui/pages/my_order/widgets/no_pending_order.dart';
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
          const Flexible(
            flex: 7,
            child: NoPendingOrder(),
          ),
        ],
      ),
    );
  }
}