import 'package:flutter/material.dart';

import 'account_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSpatialAudioEnabled = false;
  bool isDarkModeEnabled = false;
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
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 30,
              ),
              Flexible(
                child: Center(
                  child: Text(
                    'settings',
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountScreen()),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  'SK',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shobha Kumari',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(height: 2.0),
                                Text(
                                  'shobha@gmail.com',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 65.0),
                            Icon(
                              Icons.arrow_forward_rounded,
                              // size: 30.0,
                              color: Colors.grey[700],
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(height: 25),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'get notifications',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Switch(
                            value: isSpatialAudioEnabled,
                            onChanged: (value) {
                              setState(() {
                                isSpatialAudioEnabled = value;
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      List<String> texts = [
                        'language',
                        'dark mode',
                      ];
                      return Column(
                        children: [
                          ListTile(
                            dense: true,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12.0),
                            leading: Text(
                              texts[index % texts.length],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            trailing: index == 1
                                ? Switch(
                                    value: isDarkModeEnabled,
                                    onChanged: (value) {
                                      setState(() {
                                        isDarkModeEnabled = value;
                                      });
                                    },
                                    activeColor: Colors.blue,
                                  )
                                : Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.grey[700],
                                    size: 22,
                                  ),
                            onTap: () {},
                          ),
                          if (index < 1)
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Divider(
                                height: 1.0,
                                color: Colors.grey[400],
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      List<String> texts = [
                        "what's new",
                        "faq / contact us",
                        "community guidelines",
                        "terms of service",
                        "privacy policy",
                        "blocked users"
                      ];
                      return Column(
                        children: [
                          ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal:
                                    12.0), // Adjust the horizontal padding

                            leading: Text(
                              texts[index % texts.length],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            trailing: Icon(Icons.arrow_forward_rounded,
                                color: Colors.grey[700], size: 22),
                            onTap: () {},
                          ),
                          if (index < 5)
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Divider(
                                height: 1.0,
                                color: Colors.grey[400],
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF3C53D7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
