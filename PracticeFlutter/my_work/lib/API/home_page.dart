import 'package:flutter/material.dart';

class HomeAPI extends StatefulWidget {
  const HomeAPI({super.key});

  @override
  State<HomeAPI> createState() => _HomeAPIState();
}

class _HomeAPIState extends State<HomeAPI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User id: data"),
                  Text("Id: data"),
                  Text("Title: data"),
                  Text("Body: data"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
