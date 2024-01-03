import 'package:flutter/material.dart';
import 'package:food_book_app/pages/AccountPage.dart';
import 'package:food_book_app/pages/CartPage.dart';
import 'package:food_book_app/pages/ChatPage.dart';
import 'package:food_book_app/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppLayout()
    );
  }
}

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  Color homeIconColor = Colors.white;
  Color chatIconColor = Colors.grey;
  Color cartIconColor = Colors.grey;
  Color accountIconColor = Colors.grey;

  String selected = "home";
  Widget currentPage = const HomePage();

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
    return Scaffold(
        body: Center(
            child: currentPage
        ),
        bottomNavigationBar:
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
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
                    currentPage = const HomePage();
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
                    currentPage = const ChatPage();
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
                    currentPage = const CartPage();
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
                    currentPage = const AccountPage();
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
        )
    );
  }
}