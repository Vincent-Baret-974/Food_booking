import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
            children: [
              BottomTabBar()
            ],
        ),
      )
    );
  }
}

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 20,
        left: 0,
        right: 0,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: 350,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(40))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {print('clicked');},
                    icon: const Icon(
                        Icons.home_filled,
                        color: Colors.grey,
                        size: 25
                    ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {print('clicked');},
                  icon: const Icon(
                      Icons.chat_rounded,
                      color: Colors.grey,
                      size: 25
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {print('clicked');},
                  icon: const Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.grey,
                      size: 25
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {print('clicked');},
                  icon: const Icon(
                      Icons.account_circle_rounded,
                      color: Colors.grey,
                      size: 25
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
