import 'package:flutter/material.dart';

import 'Drawer_screen.dart';
import 'Home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children:[ 
          DrawerScreen(),
      Home()
      ],
      ),
    );
  }
}