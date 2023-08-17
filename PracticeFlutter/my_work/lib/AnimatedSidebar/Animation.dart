import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Sidebar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Animated Sidebar Example'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: AnimatedContainer(
        duration: Duration(seconds: 5),
        width: _isDrawerOpen ? 250 : 0, // Control drawer width
        child: SideBar(),
      ),
      body: Center(
        child: Text('Main Content'),
      ),
    );
  }
}
