import 'package:flutter/material.dart';

import '../widgets/OrderCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
        children: [
          OrderCard(),
        ],
      ),
    );
  }
}