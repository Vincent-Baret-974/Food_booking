import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ProductCategoryCard extends StatelessWidget {
  final Map productCategoryData;

  const ProductCategoryCard({
    super.key, required this.productCategoryData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 85,
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