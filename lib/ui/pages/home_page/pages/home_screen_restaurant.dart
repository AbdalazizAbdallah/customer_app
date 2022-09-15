import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/home_page/controller/home_page_controller.dart';
import 'package:customer_app/ui/widgets/card_restaurant_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreenRestaurant extends GetView<HomeScreenController> {
  const HomeScreenRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant'),
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_sharp),
            ),
          ],
        ),
        leadingWidth: SizesApp.r105,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_on,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(SizesApp.r16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'top_rating'.tr,
              style: StylesApp.subtitle1.copyWith(
                color: ColorsApp.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: SizesApp.r16,
            ),
            SizedBox(
              width: SizesApp.r330,
              height: SizesApp.r200,
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index % 2 != 0) {
                    return const CardRestaurantWidget(
                      restaurantName: 'Shampyon',
                      pathImage: ImagesApp.imageFood1Path,
                    );
                  } else {
                    return const CardRestaurantWidget(
                      restaurantName: 'Alafia',
                      pathImage: ImagesApp.imageFood2Path,
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: SizesApp.r5,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller.pageController, // PageController
                count: 10,
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
            SizedBox(
              height: SizesApp.r10,
            ),
            Text(
              'all_restaurant'.tr,
              style: StylesApp.subtitle1.copyWith(
                color: ColorsApp.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: SizesApp.r16,
            ),
            Flexible(
              flex: 1,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index % 2 != 0) {
                    return const CardRestaurantWidget(
                      restaurantName: 'Qousayed',
                      pathImage: ImagesApp.imageFood3Path,
                    );
                  } else {
                    return const CardRestaurantWidget(
                      restaurantName: 'Alafia',
                      pathImage: ImagesApp.imageFood4Path,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
