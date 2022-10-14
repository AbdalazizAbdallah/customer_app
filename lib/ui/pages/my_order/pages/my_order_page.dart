import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/ui/pages/my_order/controllers/my_order_page_controller.dart';
import 'package:customer_app/ui/pages/my_order/pages/complete_page.dart';
import 'package:customer_app/ui/pages/my_order/pages/pending_page.dart';
import 'package:customer_app/ui/pages/my_order/widgets/custom_elevated_button_widget1.dart';
import 'package:customer_app/ui/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(title: 'my_order'.tr),
      body: GetBuilder<MyOrderPageController>(
        init: MyOrderPageController(),
        builder: (myOrderPageController) {
          return Column(
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
                          child: CustomElevatedButtonWidget1(
                            title: 'Complete',
                            backgroundColor:
                                myOrderPageController.backgroundColorComplete,
                            count: 10,
                            textColor: myOrderPageController.textColorComplete,
                            onPressed: () =>
                                myOrderPageController.completePage(),
                          ),
                        ),
                        Expanded(
                          child: CustomElevatedButtonWidget1(
                            title: 'Pending',
                            backgroundColor:
                                myOrderPageController.backgroundColorPending,
                            count: 3,
                            textColor: myOrderPageController.textColorPending,
                            onPressed: () =>
                                myOrderPageController.pendingPage(),
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
                  child: myOrderPageController.currentPage == Pages.complete
                      ? const CompletePage()
                      : const PendingPage(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
