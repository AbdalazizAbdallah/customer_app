import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:flutter/material.dart';

import '../../core/constants/sizes_app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizesApp.doubleInfinity,
        width: SizesApp.doubleInfinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagesApp.backgroundSplashPath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Flexible(
              flex: 3,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox.expand(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: <Color>[
                              ColorsApp.warning,
                              ColorsApp.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: SizedBox.expand(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(SizesApp.r12),
                          gradient: LinearGradient(
                            end: Alignment.bottomCenter,
                            begin: Alignment.topCenter,
                            colors: <Color>[
                              ColorsApp.black,
                              ColorsApp.transparent,
                            ],
                          ),
                        ),
                        child: Column(
                          children: [],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox.expand(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: <Color>[
                            ColorsApp.primary,
                            ColorsApp.transparent,
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
