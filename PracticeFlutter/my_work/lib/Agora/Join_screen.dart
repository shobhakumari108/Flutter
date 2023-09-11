import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_work/Agora/videocall_screen.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              child: Icon(Icons.arrow_back_ios_new_sharp),
              onTap: Get.back,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Enter meeting code below",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.grey.shade300,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: TextField(
              controller: _controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: "Example : abc-efg-dhi"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => AVideoCallScreen()
);

            },
            child: Text("join"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(100, 30),
              primary: Colors.indigo,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
        ],
      ),
    ))));
  }
}
