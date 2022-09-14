import 'dart:math' as math; // import this

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardRestaurantWidget extends StatelessWidget {
  const CardRestaurantWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: SizesApp.r330,
        height: SizesApp.r200,
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagesApp.imageFood1Path),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      SizedBox.expand(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              end: Alignment.bottomCenter,
                              begin: Alignment.topCenter,
                              colors: [
                                ColorsApp.black,
                                ColorsApp.black.withOpacity(0.55),
                                ColorsApp.transparent,
                                ColorsApp.transparent,
                                ColorsApp.black.withOpacity(0.55),
                                ColorsApp.black,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 9,
                            child: SizedBox.expand(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: SizesApp.r12,
                                  vertical: SizesApp.r4,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          style: StylesApp.subtitle2.copyWith(
                                            color: ColorsApp.white,
                                          ),
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
                                      ],
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Shampyon',
                                      style: StylesApp.headline5.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: ColorsApp.white,
                                      ),
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
                                      style: StylesApp.subtitle2Din.copyWith(
                                        color: ColorsApp.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.only(right: SizesApp.r10),
                              child: SizedBox.expand(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color:
                                            ColorsApp.black.withOpacity(0.36),
                                        border: Border.all(
                                          color: ColorsApp.white,
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(SizesApp.r16),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(SizesApp.r2),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '30%',
                                              style: StylesApp.caption.copyWith(
                                                color: ColorsApp.white,
                                              ),
                                            ),
                                            SizedBox(
                                              width: SizesApp.r5,
                                            ),
                                            SvgPicture.asset(
                                                ImagesApp.discountPath),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: SizesApp.r12,
                                      backgroundColor:
                                          ColorsApp.black.withOpacity(0.37),
                                      child: SvgPicture.asset(
                                          ImagesApp.pickupTypePath),
                                    ),
                                    CircleAvatar(
                                      radius: SizesApp.r12,
                                      backgroundColor:
                                          ColorsApp.black.withOpacity(0.37),
                                      child: SvgPicture.asset(
                                          ImagesApp.deliveryTypePath),
                                    ),
                                    CircleAvatar(
                                      radius: SizesApp.r12,
                                      backgroundColor:
                                          ColorsApp.black.withOpacity(0.37),
                                      child: SvgPicture.asset(
                                          ImagesApp.tablesTypePath),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: SizedBox.expand(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: ColorsApp.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(SizesApp.r5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: SizesApp.r10,
                          ),
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
                                color: ColorsApp.black.withOpacity(0.5)),
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '15 - 25',
                                style: StylesApp.body1.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: ColorsApp.primary),
                              ),
                              Text('Mins', style: StylesApp.captionDin),
                            ],
                          ),
                          const Spacer(),
                          SvgPicture.asset(ImagesApp.sharePath),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
