import 'dart:math' as math; // import this

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class CardRestaurantOfferWidget extends StatelessWidget {
  const CardRestaurantOfferWidget({Key? key, required this.offerText})
      : super(key: key);

  final String offerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                              ColorsApp.black87,
                              ColorsApp.black87.withOpacity(0.55),
                              ColorsApp.transparent,
                              ColorsApp.transparent,
                              ColorsApp.black87.withOpacity(0.55),
                              ColorsApp.black87,
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox.expand(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizesApp.r12,
                          vertical: SizesApp.r4,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorsApp.black87.withOpacity(0.36),
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
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: SizesApp.r10,
                                        ),
                                        Text(
                                          offerText,
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
                            color: ColorsApp.black87.withOpacity(0.5),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '15 - 25',
                          style: StylesApp.body1.copyWith(
                            fontWeight: FontWeight.w600,
                            color: ColorsApp.primary,
                          ),
                        ),
                        SizedBox(
                          width: SizesApp.r5,
                        ),
                        Text(
                          'Mins',
                          style: StylesApp.captionDin,
                        ),
                        SizedBox(
                          width: SizesApp.r10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
