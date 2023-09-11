import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NewMeetingScreen extends StatefulWidget {
  const NewMeetingScreen({super.key});

  @override
  State<NewMeetingScreen> createState() => _NewMeetingScreenState();
}

class _NewMeetingScreenState extends State<NewMeetingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(children: [
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: ListTile(
                    leading: Icon(Icons.link),
                    title: SelectableText(
                      "askdska",
                      style: TextStyle(),
                    ),
                    trailing: Icon(Icons.copy),
                  )),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                onPressed: () {

                 Get.to(() => NewMeetingScreen());
                },
                icon: Icon(Icons.arrow_drop_down),
                label: Text("Share invite"),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(320, 30),
                  primary: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                      ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.video_call),
                label: Text("start call"),
                style: OutlinedButton.styleFrom(
                    // primary: Colors.indigo,
                    side: BorderSide(color: Colors.indigo),
                    fixedSize: Size(370, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                        )
                        ),
              ),
              
            ]),
          ),
        ),
      ),
    );
  }
}
