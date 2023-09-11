import 'package:flutter/material.dart';

import 'Sidebar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Sidebar Example')),
      drawer: SideBar(), 
      body: Center(
        child: Text('Main Content'),
      ),
    );
  }
}
