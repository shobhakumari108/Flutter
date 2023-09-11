import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_work/Agora/new_meeting.dart';

import 'Join_screen.dart';

class AHomeScreen extends StatefulWidget {
  const AHomeScreen({super.key});

  @override
  State<AHomeScreen> createState() => _AHomeScreenState();
}

class _AHomeScreenState extends State<AHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Video Confrence",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Get.to(() => NewMeetingScreen());

                  },
                  icon: Icon(Icons.add),
                  label: Text("New Meeting"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(320, 30),
                    primary: Colors.indigo,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Divider(
                //   thickness: 1,
                //   height: 40,
                //   indent: 40,
                //   endIndent: 20,
                // ),
                OutlinedButton.icon(
                  onPressed: () {
                    Get.to(() => JoinScreen());

                   
                  },
                  icon: Icon(Icons.margin),
                  label: Text("Join with a code"),
                  style: OutlinedButton.styleFrom(
                      // primary: Colors.indigo,
                      side: BorderSide(color: Colors.indigo),
                      fixedSize: Size(370, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
