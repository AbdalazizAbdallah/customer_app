import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/widgets/adnos_item_widget.dart';
import 'package:customer_app/ui/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart'; // import this

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(title: 'Order details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 160,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImagesApp.imageFood1Path,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                PositionedDirectional(
                  end: 0,
                  bottom: 0,
                  top: 0,
                  child: Padding(
                    padding: EdgeInsets.all(SizesApp.r10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: ColorsApp.black87.withOpacity(0.36),
                            border: Border.all(
                              color: ColorsApp.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(SizesApp.r16),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(SizesApp.r2),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: SizesApp.r10,
                                ),
                                Text(
                                  'day & night',
                                  style: StylesApp.caption.copyWith(
                                    color: ColorsApp.white,
                                  ),
                                ),
                                SizedBox(
                                  width: SizesApp.r10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkResponse(
                          onTap: () {
                            debugPrint('like');
                          },
                          child: CircleAvatar(
                            backgroundColor: ColorsApp.white,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                color: ColorsApp.grey,
                              ),
                            ),
                          ),
                        ),
                        InkResponse(
                          onTap: () {
                            debugPrint('star');
                          },
                          child: CircleAvatar(
                            backgroundColor: ColorsApp.primary,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.star_outline_rounded,
                                color: ColorsApp.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(SizesApp.r16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Alafia',
                        style: StylesApp.headline5.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '15 - 25',
                        style: StylesApp.body1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: SizesApp.r5,
                      ),
                      Text(
                        'Mins',
                        style: StylesApp.captionDin,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizesApp.r4,
                    width: SizesApp.r30,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: ColorsApp.primary,
                        borderRadius: BorderRadius.circular(
                          SizesApp.r2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizesApp.r5,
                  ),
                  Text(
                    'mezily - labensie - bresian',
                    style: StylesApp.subtitle2Din,
                  ),
                  Row(
                    children: [
                      Text(
                        '2.5€ delivery',
                        style: StylesApp.subtitle2Din,
                      ),
                      SizedBox(
                        width: SizesApp.r5,
                      ),
                      Icon(
                        Icons.circle_sharp,
                        color: ColorsApp.greyLight,
                        size: SizesApp.r5,
                      ),
                      SizedBox(
                        width: SizesApp.r5,
                      ),
                      Text(
                        'No minimum',
                        style: StylesApp.captionDin.copyWith(
                            color: ColorsApp.black87.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Icon(
                          Icons.thumb_up_alt_outlined,
                          color: ColorsApp.primary,
                        ),
                      ),
                      SizedBox(
                        width: SizesApp.r4,
                      ),
                      Text(
                        '94%',
                        style: StylesApp.subtitle2,
                      ),
                      SizedBox(
                        width: SizesApp.r12,
                      ),
                      Text(
                        'EEE',
                        style: StylesApp.subtitle2.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.warning,
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsApp.primary,
                          padding: EdgeInsets.symmetric(
                            horizontal: SizesApp.r30,
                          ),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(SizesApp.r20),
                          ),
                        ),
                        onPressed: () {
                          debugPrint('reorder');
                        },
                        child: Text(
                          'reorder'.tr,
                          style: StylesApp.subtitle2.copyWith(
                            color: ColorsApp.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              tileColor: ColorsApp.whiteSuger,
              title: Text(
                'Order number',
                style: StylesApp.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '12326565',
                style: StylesApp.subtitle1,
              ),
            ),
            SizedBox(
              height: SizesApp.r5,
            ),
            ListTile(
              tileColor: ColorsApp.whiteSuger,
              title: Text('Delivary addres', style: StylesApp.subtitle1),
              subtitle: Text(
                'statusa ,city,street 1213 box454',
                style: StylesApp.subtitle1,
              ),
            ),
            SizedBox(
              height: SizesApp.r5,
            ),
            ListTile(
              tileColor: ColorsApp.whiteSuger,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Request Time',
                    style: StylesApp.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Delivary Time',
                    style: StylesApp.subtitle1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '03:15 pm',
                    style: StylesApp.subtitle1,
                  ),
                  Text(
                    '20/10/2018 03:15 pm',
                    style: StylesApp.subtitle1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizesApp.r5,
            ),
            ListTile(
              tileColor: ColorsApp.greyLight,
              title: Text(
                'Order',
                style: StylesApp.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            const AdnosItemWidget(),
            SizedBox(
              height: SizesApp.r10,
            ),
            const AdnosItemWidget(),
            SizedBox(
              height: SizesApp.r10,
            ),
            const AdnosItemWidget(),
            SizedBox(
              height: SizesApp.r20,
            ),
            Padding(
              padding: EdgeInsets.all(SizesApp.r16),
              child: SizedBox(
                width: SizesApp.doubleInfinity,
                height: 100,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsApp.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      PositionedDirectional(
                        top: -20,
                        start: 15,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: SizesApp.r16,
                              vertical: SizesApp.r5,
                            ),
                            child: Text(
                              'Note',
                              style: StylesApp.caption.copyWith(
                                color: ColorsApp.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: SizesApp.r16,
                          ),
                          child: Text(
                              softWrap: true,
                              maxLines: null,
                              style: StylesApp.caption.copyWith(
                                color: ColorsApp.blackLight,
                              ),
                              '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ull'),
                        ),
                      ),
                    ],
                  ),
                ),
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
            )
          ],
        ),
      ),
    );
  }
}
