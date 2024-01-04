import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(40),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey, // Shadow color with opacity
              spreadRadius: 1, // Spread radius
              blurRadius: 1, // Blur radius
              offset: Offset(0, 2), // Offset for the shadow
            ),
          ],
        ),
        child: Row(
          children: [
            const Text('Claim your daily\n free delivery now!'),
            Expanded(
              child: Container(
                height: 150,
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
      ),
    );
  }
}