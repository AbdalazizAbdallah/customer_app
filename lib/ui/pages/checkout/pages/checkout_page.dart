import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/checkout/widgets/select_payment_bottom_sheet.dart';
import 'package:customer_app/ui/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors_app.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(title: 'Checkout'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Order number',
                style: StylesApp.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '00125456',
                style: StylesApp.subtitle1,
              ),
            ),
            Divider(
              color: ColorsApp.grey.withOpacity(0.4),
            ),
            ListTile(
              title: Text(
                'Delivery address',
                style: StylesApp.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Gaza , SalahDeen street ',
                style: StylesApp.subtitle1,
              ),
              trailing: TextButton(
                onPressed: () {},
                child: const Text('change'),
              ),
            ),
            Divider(
              color: ColorsApp.grey.withOpacity(0.4),
            ),
            ListTile(
              title: Text(
                'Date',
                style: StylesApp.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                DateFormat('yyyy/MM/dd hh:mm aaa').format(DateTime.now()),
                style: StylesApp.subtitle1,
              ),
              trailing: TextButton(
                onPressed: () {},
                child: const Text('change'),
              ),
            ),
            Divider(
              color: ColorsApp.grey.withOpacity(0.4),
            ),
            ListTile(
              title: Text(
                'Payment method',
                style: StylesApp.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.googlePay,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: SizesApp.r10,
                  ),
                  Text(
                    'Google pay',
                    style: StylesApp.caption,
                  )
                ],
              ),
              trailing: TextButton(
                onPressed: () {},
                child: const Text('change'),
              ),
            ),
            Container(
              height: SizesApp.r130,
              width: SizesApp.doubleInfinity,
              color: ColorsApp.greyTooLight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizesApp.r20,
                  vertical: SizesApp.r12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: StylesApp.subtitle1,
                        ),
                        Text(
                          '120.0 £',
                          style: StylesApp.subtitle1,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery fee',
                          style: StylesApp.subtitle1,
                        ),
                        Text(
                          '20.5 £',
                          style: StylesApp.subtitle1,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rider tip',
                          style: StylesApp.subtitle1,
                        ),
                        Text(
                          '20.5 £',
                          style: StylesApp.subtitle1,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order Total',
                          style: StylesApp.headline7.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '120.5 £',
                          style: StylesApp.headline7.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              ColorsApp.primaryRightGradient,
              ColorsApp.primaryLeftGradient,
            ],
          ),
        ),
        child: ListTile(
          onTap: () {
            Get.bottomSheet(
              backgroundColor: ColorsApp.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              const FractionallySizedBox(
                heightFactor: 0.6,
                child: SelectPaymentBottomSheet(),
              ),
            );
          },
          title: Text(
            'Buy now',
            textAlign: TextAlign.center,
            style: StylesApp.subtitle1.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorsApp.white,
            ),
          ),
        ),
      ),
    );
  }
}
