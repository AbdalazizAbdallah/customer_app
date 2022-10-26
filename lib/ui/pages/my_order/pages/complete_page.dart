import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/my_order/widgets/card_of_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizesApp.r8,
      ),
      child: GroupedListView<String, String>(
        elements: [
          '20/11/2018',
          '20/11/2021',
          '20/11/2021',
          '20/11/2021',
          '20/11/2018',
          '20/11/2017',
          '20/11/2017',
          '20/11/2017',
          '20/11/2022',
          '20/11/2022',
          '20/11/2020',
        ],
        groupBy: (element) => element,
        groupSeparatorBuilder: (String groupByValue) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizesApp.r30,
            vertical: SizesApp.r8,
          ),
          child: Text(
            groupByValue,
            style: StylesApp.subtitle2.copyWith(
              color: ColorsApp.grey,
            ),
          ),
        ),
        itemBuilder: (context, dynamic element) => CardOfOrderWidget(
          textPrimaryButton: 'Reorder'.tr,
          onPressedPrimary: () {},
        ),
        order: GroupedListOrder.DESC, // optional
      ),
    );
  }
}
