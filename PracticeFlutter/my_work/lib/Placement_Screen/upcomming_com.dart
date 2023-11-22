import 'package:flutter/material.dart';

class UpcomingCompany extends StatefulWidget {
  const UpcomingCompany({super.key});

  @override
  State<UpcomingCompany> createState() => _UpcomingCompanyState();
}

class _UpcomingCompanyState extends State<UpcomingCompany> {
  Widget buildParticipant() {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 221, 220, 220),
        ),
        // SizedBox(height: 8),
        // Text(
        //   name,
        //   style: TextStyle(
        //     color: Colors.black,
        //   ),
        // ),
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage('assets/profile.jpeg'),
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OLA cabs',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Multiple Locations',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'You can control the .',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Participants',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black,
                      // height: 20,
                      thickness: 1,
                      // indent: 20,
                      // endIndent: 20,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildParticipant(),
                            SizedBox(width: 10),
                            buildParticipant(),
                            SizedBox(width: 10),
                            buildParticipant(),
                            SizedBox(width: 10),
                            buildParticipant(),
                            SizedBox(width: 10),
                            buildParticipant(),
                            // SizedBox(width: 10),
                            // buildParticipant(),
                            // SizedBox(width: 10),
                          ],
                        )),
                  ],
                ),
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
