import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdnosItemWidget extends StatelessWidget {
  const AdnosItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizesApp.r105,
      width: SizesApp.doubleInfinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(SizesApp.r10),
            child: SizedBox.expand(
              child: Card(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 110),
                  child: ListTile(
                    title: Text(
                      'slalra in sataoen',
                      style: StylesApp.subtitle1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text('2 x 20.5€', style: StylesApp.subtitle1),
                  ),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            top: 0,
            bottom: 0,
            start: 20,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: ColorsApp.greyLight,
                    spreadRadius: 0.5,
                  )
                ],
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: ColorsApp.white,
                child: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    ImagesApp.imageFood1Path,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
