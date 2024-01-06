import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RestaurantCard.dart';

class FeaturedSection extends StatelessWidget {
  FeaturedSection({super.key});

  final List restaurants = [
    {
      'name': 'McDonald',
      'distance': '1.2 km',
      'timeToDestination': '15-20 minutes',
      'rate': '4.8',
      'image': 'images/mcdo.jpeg'
    },
    {
      'name': 'Burger King',
      'distance': '2.3 km',
      'timeToDestination': '20-25 minutes',
      'rate': '5.0',
      'image': 'images/burger_king.jpeg'
    },
    {
      'name': 'KFC',
      'distance': '3.4 km',
      'timeToDestination': '30-35 minutes',
      'rate': '4.2',
      'image': 'images/kfc.jpeg'
    },
    {
      'name': 'Gladalle',
      'distance': '3.6 km',
      'timeToDestination': '30-35 minutes',
      'rate': '4.6',
      'image': 'images/gladalle.jpeg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Featured',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: restaurants.map((restaurant) {
            return RestaurantCard(restaurantData: restaurant);
          }).toList(),
        )
      ],
    );
  }
}
