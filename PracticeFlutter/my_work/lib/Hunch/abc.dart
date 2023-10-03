import 'package:flutter/material.dart';

class ABC extends StatelessWidget {
  const ABC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      child: Image.asset(
          'assets/hand.avif',
          fit: BoxFit.cover, // Adjust this property as needed
        ),
      )
    );
  }
}