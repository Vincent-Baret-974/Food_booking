import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey.shade400, width: 1)),
                padding: const EdgeInsets.all(2),
                child: IconButton(
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.search_rounded,
                      color: Colors.grey.shade600, size: 35),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Current location',
                      style:
                          GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.place, color: Colors.green, size: 25),
                        const SizedBox(width: 5),
                        Text(
                          'Saint-Joseph, Réunion',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey.shade400, width: 1)),
                padding: const EdgeInsets.all(2),
                child: IconButton(
                  highlightColor: Colors.transparent,
                  icon: const Icon(Icons.notifications_rounded,
                      color: Colors.black, size: 35),
                  onPressed: () {},
                ),
              ),
            ],
          )
      ),
    );
  }
}
