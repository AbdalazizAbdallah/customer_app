import 'package:customer_app/ui/pages/my_order/widgets/card_of_order_widget.dart';
import 'package:customer_app/ui/pages/my_order/widgets/no_pending_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PendingPage extends StatelessWidget {
  const PendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> orders = [];
    return orders.isEmpty
        ? NoPendingOrderWidget()
        : ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => CardOfOrderWidget(
              textPrimaryButton: 'path'.tr,
              onPressedPrimary: () {},
            ),
          );
  }
}
