import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.expand_more_outlined,
              color: Colors.black,
              size: 40,
            ),
            Flexible(
              child: Center(
                child: Text(
                  'activity',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/notification_Image.jpg'),
                ),
                Container(
                  width: 220,
                  child: Column(
                    children: [
                      Text(
                        'This is a long text that will be displayed in multiple lines if it exceeds the available width. You can control the number of lines and how overflow is handled.',
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'This is a long text that will be displayed in multiple lines if it exceeds the available width. You can control the number of lines and how overflow is handled.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This is a long text that will be displayed in multiple lines if it exceeds the available width. You can control the number of lines and how overflow is handled.',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 310,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 221, 220, 220),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Start chat',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ))),
    );
  }
}
