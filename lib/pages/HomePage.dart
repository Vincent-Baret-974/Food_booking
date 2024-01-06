import 'package:flutter/material.dart';
import 'package:food_book_app/widgets/home/featured/FeaturedSection.dart';

import '../widgets/home/OrderCard.dart';
import '../widgets/home/product/ProductGrid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const OrderCard(),
            const SizedBox(height: 20),
            ProductGrid(),
            const SizedBox(height: 30),
            FeaturedSection(),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}