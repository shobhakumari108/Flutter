import 'package:flutter/material.dart';

class WhatsNewScreen extends StatelessWidget {
  final List<WhatsNewItem> whatsNewList = [
    WhatsNewItem(
      title: 'User Profiles',
      description:
          'Allow users to create profiles, track their progress, and save their preferences.',
    ),
    WhatsNewItem(
      title: 'Achievements and Badges',
      description:
          'Reward users with achievements and badges for completing certain tasks or reaching milestones.',
    ),
    WhatsNewItem(
      title: 'Leaderboard',
      description:
          'Implement a leaderboard system to encourage competition among users.',
    ),
    WhatsNewItem(
      title: 'Resume Builder',
      description:
          'Provide a tool to help users create and format their resumes, and offer tips for improvement.',
    ),
    // WhatsNewItem(
    //   title: 'Interview Simulation',
    //   description:
    //       'Allow users to simulate real job interviews with different scenarios and difficulty levels.',
    // ),
    WhatsNewItem(
      title: 'Practice Analytics',
      description:
          'Provide detailed analytics on user performance in different practice areas to help them identify strengths and weaknesses.',
    ),
    // WhatsNewItem(
    //   title: 'Notifications and Reminders',
    //   description: 'Send notifications and reminders to users to encourage consistent practice.',
    // ),
    WhatsNewItem(
      title: 'Feedback and Rating System',
      description:
          'Allow users to provide feedback on practice sessions and rate the quality of the content.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
            Flexible(
              child: Center(
                child: Text(
                  "what's new",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: whatsNewList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey[200],
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                whatsNewList[index].title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                whatsNewList[index].description,
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Add navigation logic for each feature
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfileScreen()));
              },
            ),
          );
        },
      ),
    );
  }
}

class WhatsNewItem {
  final String title;
  final String description;

  WhatsNewItem({
    required this.title,
    required this.description,
  });
}
