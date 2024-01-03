import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  Color homeIconColor = Colors.grey;
  Color chatIconColor = Colors.grey;
  Color cartIconColor = Colors.grey;
  Color accountIconColor = Colors.grey;

  String selected = "";

  void resetColorPreviouslySelectedIcon(String previous) {
    switch (previous) {
      case "home":
        homeIconColor = Colors.grey;
      case "chat":
        chatIconColor = Colors.grey;
      case "cart":
        cartIconColor = Colors.grey;
      case "account":
        accountIconColor = Colors.grey;
    }
  }

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
                    onPressed: () {
                      setState(() {
                        resetColorPreviouslySelectedIcon(selected);
                        homeIconColor = Colors.white;
                        selected = "home";
                      });
                    },
                    icon: Icon(
                        Icons.home_filled,
                        color: homeIconColor,
                        size: 25
                    ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    setState(() {
                      resetColorPreviouslySelectedIcon(selected);
                      chatIconColor = Colors.white;
                      selected = "chat";
                    });
                  },
                  icon: Icon(
                      Icons.chat_rounded,
                      color: chatIconColor,
                      size: 25
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    setState(() {
                      resetColorPreviouslySelectedIcon(selected);
                      cartIconColor = Colors.white;
                      selected = "cart";
                    });
                  },
                  icon: Icon(
                      Icons.shopping_cart_rounded,
                      color: cartIconColor,
                      size: 25
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    setState(() {
                      resetColorPreviouslySelectedIcon(selected);
                      accountIconColor = Colors.white;
                      selected = "account";
                    });
                  },
                  icon: Icon(
                      Icons.account_circle_rounded,
                      color: accountIconColor,
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
