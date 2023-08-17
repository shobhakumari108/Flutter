import 'package:flutter/material.dart';

import 'AnimatedSidebar/HomeScreen.dart';
import 'HiddenDrawer/Home.dart';
import 'HiddenDrawer/Home_screen.dart';
import 'Navbar/navbar_screen.dart';
import 'SidebarAnimation/SideMenu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: MainScreen(),
      // home: SideMenu(),
      // home: HomePage(),
      home:NavbarScreen(),
    );
  }
}
