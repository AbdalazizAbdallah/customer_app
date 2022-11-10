import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/my_basket/widgets/slide_adons_Item_widget.dart';
import 'package:customer_app/ui/widgets/adnos_item_widget.dart';
import 'package:customer_app/ui/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MyBasketScreen extends StatelessWidget {
  const MyBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(title: 'my_basket'.tr),
      body: Column(
        children: [
          ListTile(
            tileColor: ColorsApp.greyTooLight,
            title: Text(
              'Order for',
              style: StylesApp.subtitle1,
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '15-25 (ASPN)',
                  style: StylesApp.subtitle1.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorsApp.black,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(SizesApp.r5),
                    child: Text(
                      'change',
                      style: StylesApp.subtitle2.copyWith(
                        color: ColorsApp.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizesApp.r5, vertical: SizesApp.r20),
            child: Column(
              children: [
                SlideAdonsItemWidget(),
                SizedBox(
                  height: SizesApp.r5,
                ),
                SlideAdonsItemWidget(),
                SizedBox(
                  height: SizesApp.r5,
                ),
                SlideAdonsItemWidget(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizesApp.r20, vertical: SizesApp.r10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: StylesApp.subtitle1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '114.0 £',
                      style: StylesApp.subtitle1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '5% off',
                      style: StylesApp.subtitle1.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorsApp.warning,
                      ),
                    ),
                    Text(
                      '120.0 £',
                      style: StylesApp.subtitle1.copyWith(
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Add vocher code'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
