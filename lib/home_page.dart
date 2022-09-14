import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/ui/widgets/card_item_in_restaurant.dart';
import 'package:customer_app/ui/widgets/card_restaurant_offer_widget.dart';
import 'package:customer_app/ui/widgets/card_restaurant_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fast eat'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CardItemInRestaurant(pathOfImage: ImagesApp.imageFood2Path),
              CardItemInRestaurant(pathOfImage: ImagesApp.imageNotFoundPath),
              CardRestaurantWidget(),
              CardRestaurantOfferWidget(offerText: '30% Off'),
              CardRestaurantOfferWidget(offerText: 'day & night'),
            ],
          ),
        ),
      ),
    );
  }
}
