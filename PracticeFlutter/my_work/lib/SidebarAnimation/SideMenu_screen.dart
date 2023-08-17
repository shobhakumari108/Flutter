import 'package:flutter/material.dart';

import 'Info_card.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color.fromARGB(255, 68, 66, 66),
        child: SafeArea(
          child: Column(
            children: [
              InfoCard(name: 'Shobha', profession: 'developer'),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.white24,
                      height: 1,
                    ),
                  )
                ],
              ),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    )),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
