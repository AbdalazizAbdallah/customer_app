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
