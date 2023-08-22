import 'package:flutter/material.dart';

class UpcomingEvents extends StatefulWidget {
  const UpcomingEvents({super.key});

  @override
  State<UpcomingEvents> createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
  Widget buildParticipant(String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Color.fromARGB(255, 221, 220, 220),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_outlined),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'EVERY SAT 5:00 PM',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.share_outlined),
                        SizedBox(width: 20),
                        Icon(Icons.more_vert_outlined),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'This is a long text that will be displayed in multiple lines if it exceeds the available width. You can control the number of lines and how overflow is handled.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Participants',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildParticipant('Participant 1'),
                        SizedBox(width: 10),
                        buildParticipant('Participant 2'),
                        SizedBox(width: 10),
                        buildParticipant('Participant 3'),
                        SizedBox(width: 10),
                        buildParticipant('Participant 4'),
                        SizedBox(width: 10),
                        buildParticipant('Participant 5'),
                        SizedBox(width: 10),
                        buildParticipant('Participant 6'),
                        SizedBox(width: 10),
                      ],
                    )),
              ],
            ),
          ),
        ),
      )),
      bottomNavigationBar: Container(
        height: 80, // Adjust the height as needed
        color: Colors.white,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 8, top: 8),
              child: Text('Add to My Circle'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 234, 247),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Add your reply button action here
                    },
                    child: Text(
                      'Listen In',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 234, 247),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Add your letter button action here
                    },
                    child: Text(
                      'Speak',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
