import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  final List productCategories = [
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: productCategories.map((productCategory) {
            return ProductCategoryCard(productCategoryData: productCategory);
          }).toList(),
        ),
        const Row(
          children: [
            Text('')
          ],
        )
      ],
    );
  }
}

class ProductCategoryCard extends StatelessWidget {
  final Map productCategoryData;

  const ProductCategoryCard({
    super.key, required this.productCategoryData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 90,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(productCategoryData['image']),
                      fit: BoxFit.scaleDown
                  )
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
              productCategoryData['title'],
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600
              ),
          )
        ],
      ),
    );
  }
}