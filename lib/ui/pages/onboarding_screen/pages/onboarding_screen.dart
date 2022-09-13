import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/onboarding_screen/controllers/onboarding_screen_controlles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/page_view_item_widget.dart';

class OnboardingScreen extends GetView<OnboardingScreenController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 4,
            child: Center(
              child: SvgPicture.asset(
                ImagesApp.logoPath,
                height: SizesApp.r80,
              ),
            ),
          ),
          Flexible(
            flex: 10,
            child: PageView(
              controller: controller.pageController,
              children: [
                PageViewItemWidget(
                  widget: SvgPicture.asset(ImagesApp.imageOnboardingPath),
                ),
                PageViewItemWidget(
                  widget: SvgPicture.asset(ImagesApp.imageOnboarding2Path),
                ),
                PageViewItemWidget(
                  widget: Lottie.asset(
                    ImagesApp.orderFood,
                    fit: BoxFit.contain,
                  ),
                ),
                PageViewItemWidget(
                  widget: Lottie.asset(
                    ImagesApp.orderFood2,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: SizesApp.r48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      onPressed: () {
                        // TODO :(Team Members): make skip function
                      },
                      child: Text(
                        'Skip',
                        style:
                            StylesApp.headline6.copyWith(color: ColorsApp.grey),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        await controller.pageController.nextPage(
                          curve: Curves.easeIn,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      child: Text(
                        'Next',
                        style: StylesApp.headline6,
                      ),
                    ),
                  ],
                ),
              )),
          Flexible(
            flex: 1,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller.pageController, // PageController
                count: 4,
                effect: ExpandingDotsEffect(
                    activeDotColor: ColorsApp.primary,
                    dotHeight: SizesApp.r5,
                    expansionFactor: SizesApp.r5,
                    dotWidth: SizesApp.r5), // your preferred effect
                onDotClicked: (index) async {
                  await controller.pageController.animateToPage(
                    index,
                    curve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
