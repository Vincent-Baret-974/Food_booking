import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color with opacity
            spreadRadius: 1, // Spread radius
            blurRadius: 1, // Blur radius
            offset: Offset(0, 1), // Offset for the shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Claim your daily\nfree delivery now!',
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                  ),
                  child: Text(
                      'Order now',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  onPressed: () {

                  }
              )
            ],
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Container(
              height: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/illustration_home_page.jpg'),
                      fit: BoxFit.contain
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}