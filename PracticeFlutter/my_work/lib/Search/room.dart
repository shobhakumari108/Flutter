import 'package:flutter/material.dart';

class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        // border: Border.all(color: Colors.black),
        color: Colors.grey.shade300,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.brightness_1,
                      size: 18,
                    ),
                    Text(
                      "Shobha Kumari",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  size: 18,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "First Room",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Beginning of something new",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Music"),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 18,
                    ),
                    Text(
                      "0",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
