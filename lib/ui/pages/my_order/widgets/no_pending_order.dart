import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class NoPendingOrder extends StatelessWidget {
  const NoPendingOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorsApp.whiteSuger,
      child: Column(
        children: [
          SizedBox(
            height: SizesApp.r60,
          ),
          SizedBox(
            height: 150,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  ImagesApp.noDataSvgPath,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 100,
                  child: Lottie.asset(
                    ImagesApp.noData,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizesApp.r40,
          ),
          Text(
            'No Pending Order',
            style: StylesApp.headline7.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorsApp.black,
            ),
          ),
          SizedBox(
            height: SizesApp.r16,
          ),
          Text(
            'You don\'t have any orders in progress.\nBrowser restaurants near you to find \n something to order.',
            style: StylesApp.caption,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
