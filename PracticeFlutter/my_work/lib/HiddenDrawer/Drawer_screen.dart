import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 42, 99, 44),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('assets/profile.jpeg'),
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Shobha Kumari',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'shobha@example.com',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  // Button action
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  primary: Color(0xFF3C53D7),
                                ),
                                child: Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: SizedBox(
                     width: MediaQuery.of(context).size.width * 0.54,
                    child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      List<IconData> icons = [
                        Icons.favorite_border_outlined,
                        Icons.download_outlined,
                        Icons.language_outlined,
                        Icons.location_on_outlined,
                        Icons.subscriptions_outlined,
                        Icons.logout_outlined,
                      ];
                      List<String> texts = [
                        'Favorites',
                        'Downloads',
                        'Language',
                        'Location',
                        'Subscription',
                        'Log Out',
                      ];
                      return ListTile(
                        contentPadding: EdgeInsets.zero, // Remove default padding
                        leading: Icon(
                          icons[index % icons.length],
                          color: Colors.grey[700],
                          size: 22,
                        ),
                        title: Text(
                          texts[index % texts.length],
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        trailing: Icon(Icons.chevron_right_outlined,
                            color: Colors.grey[700], size: 22),
                        onTap: () {},
                      );
                    },
                  ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
