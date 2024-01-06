import 'package:flutter/material.dart';

import 'ProductCategoryCard.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  final List productCategoriesFirstRow = [
    {
      'title': 'Offers',
      'image': 'images/offers.png'
    },
    {
      'title': 'Burger',
      'image': 'images/burger.png'
    },
    {
      'title': 'Pizza',
      'image': 'images/pizza.png'
    },
    {
      'title': 'Salad',
      'image': 'images/salad.png'
    }
  ];

  final List productCategoriesSecondRow = [
    {
      'title': 'Coffee',
      'image': 'images/coffee.png'
    },
    {
      'title': 'Ramen',
      'image': 'images/ramen.png'
    },
    {
      'title': 'Rice',
      'image': 'images/rice.png'
    },
    {
      'title': 'Drinks',
      'image': 'images/drink.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: productCategoriesFirstRow.map((productCategory) {
            return ProductCategoryCard(productCategoryData: productCategory);
          }).toList(),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: productCategoriesSecondRow.map((productCategory) {
            return ProductCategoryCard(productCategoryData: productCategory);
          }).toList(),
        )
      ],
    );
  }
}