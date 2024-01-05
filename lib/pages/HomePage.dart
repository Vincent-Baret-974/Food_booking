import 'package:flutter/material.dart';
import 'package:food_book_app/widgets/ProductGrid.dart';

import '../widgets/OrderCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const OrderCard(),
            const SizedBox(height: 20),
            ProductGrid()
          ],
        ),
      ),
    );
  }
}