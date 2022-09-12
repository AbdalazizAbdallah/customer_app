import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Center(
              child: SvgPicture.asset(
                ImagesApp.logoPath,
                height: SizesApp.r80,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: PageView(
              controller: pageController,
              children: [
                SizedBox.expand(
                  child: Padding(
                    padding: EdgeInsets.all(SizesApp.r16),
                    child: Column(
                      children: [
                        SvgPicture.asset(ImagesApp.imageOnboardingPath),
                        const Text(
                            'ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium '),
                      ],
                    ),
                  ),
                ),
                SizedBox.expand(
                  child: Padding(
                    padding: EdgeInsets.all(SizesApp.r16),
                    child: Column(
                      children: [
                        SvgPicture.asset(ImagesApp.imageOnboarding2Path),
                        const Text(
                            'ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium '),
                      ],
                    ),
                  ),
                ),
                Lottie.asset(
                  ImagesApp.orderFood,
                  fit: BoxFit.contain,
                ),
                Lottie.asset(
                  ImagesApp.orderFood2,
                  fit: BoxFit.contain,
                ),
                Lottie.asset(
                  ImagesApp.orderFood,
                  fit: BoxFit.contain,
                ),
                Lottie.asset(
                  ImagesApp.orderFood2,
                  fit: BoxFit.contain,
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
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Skip'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Next'),
                    ),
                  ],
                ),
              )),
          Flexible(
            flex: 1,
            child: SmoothPageIndicator(
              controller: pageController, // PageController
              count: 6,
              effect: const ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController();
    super.initState();
  }
}
