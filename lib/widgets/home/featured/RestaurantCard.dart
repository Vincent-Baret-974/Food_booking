import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class RestaurantCard extends StatelessWidget {
  final Map restaurantData;

  const RestaurantCard({
    super.key,
    required this.restaurantData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        height: 160,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(restaurantData['image']),
                      fit: BoxFit.cover)
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Row(
                          children: [
                            const Icon(
                                Icons.star_rounded,
                                size: 18,
                                color: Colors.amber
                            ),
                            Text(
                              restaurantData['rate'],
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 5),
                Text(
                  restaurantData['name'],
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 5),
                Text(
                  restaurantData['distance'],
                  style: GoogleFonts.poppins(),
                ),
                const SizedBox(width: 10),
                Text(
                  restaurantData['timeToDestination'],
                  style: GoogleFonts.poppins(),
                )
              ],
            )
          ],
        )
    );
  }
}
