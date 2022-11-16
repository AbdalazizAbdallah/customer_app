import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessMessageCompleteOrderPage extends StatelessWidget {
  const SuccessMessageCompleteOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset(
            ImagesApp.orderConfirmed,
            fit: BoxFit.contain,
          ),
          Text(
            'Successfully',
            style: StylesApp.headline5.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'You can continue your order\n from my order list',
            textAlign: TextAlign.center,
            style: StylesApp.subtitle1.copyWith(
              color: ColorsApp.grey,
            ),
          ),
          Column(
            children: [
              Text(
                'Order number',
                style: StylesApp.subtitle1.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: SizesApp.r5,
              ),
              Text(
                '00125456',
                textAlign: TextAlign.center,
                style: StylesApp.subtitle1.copyWith(
                  color: ColorsApp.grey,
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text('close'),
          ),
        ],
      ),
    );
  }
}
