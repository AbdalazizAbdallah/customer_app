import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class CardItemInRestaurant extends StatelessWidget {
  const CardItemInRestaurant({
    Key? key,
    required this.pathOfImage,
  }) : super(key: key);

  final String pathOfImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizesApp.r210,
      height: SizesApp.r140,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Stack(children: [
          SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ColorsApp.whiteSuger,
                image: DecorationImage(
                  image: AssetImage(pathOfImage),
                  fit: pathOfImage == ImagesApp.imageNotFoundPath
                      ? BoxFit.none
                      : BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorsApp.transparent,
                    ColorsApp.black.withOpacity(0.88),
                    ColorsApp.black,
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizesApp.r10, horizontal: SizesApp.r12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Shakshuka',
                      style: StylesApp.body1.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '20.5€',
                      style: StylesApp.subtitle2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
