import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 30,
            ),
            Flexible(
              child: Center(
                child: Text(
                  'account',
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      List<IconData> icons = [
                        Icons.email_outlined,
                        Icons.call,
                        Icons.date_range_outlined,
                      ];
                      List<String> texts = [
                        'Email',
                        'Phone',
                        'Date of birth',
                      ];
                      List<String> subtitles = [
                        "shobha@gmail.com",
                        "6209408329",
                        "05 Sep 2001",
                      ];
                      return Column(
                        children: [
                          ListTile(
                            dense: true,
                            leading: Icon(
                              icons[index % icons.length],
                              color: Colors.grey[700],
                              size: 22,
                            ),
                            title: Text(
                              texts[index % texts.length],
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 16),
                            ),
                            subtitle: Text(
                              subtitles[index % subtitles.length],
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                            onTap: () {},
                          ),
                          if (index < 2)
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
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      List<String> texts = [
                        "Change Password",
                        "Two-factor Authentication",
                      ];
                      return Column(
                        children: [
                          ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            leading: Text(
                              texts[index % texts.length],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            trailing: Icon(Icons.chevron_right_outlined,
                                color: Colors.grey[700], size: 22),
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
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      List<String> texts = [
                        "Request Verification",
                        "Blocked Account",
                      ];
                      Color textColor;
                      if (index == 1) {
                        textColor = Colors.red;
                      } else {
                        textColor = Colors.grey.shade700;
                      }
                      return Column(
                        children: [
                          ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            leading: Text(
                              texts[index % texts.length],
                              style: TextStyle(
                                fontSize: 16,
                                color: textColor,
                              ),
                            ),
                            trailing: Icon(Icons.chevron_right_outlined,
                                color: Colors.grey[700], size: 22),
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
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      List<String> texts = [
                        "connect twitter",
                        "connect instagram",
                      ];

                      return Column(
                        children: [
                          ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            leading: Text(
                              texts[index % texts.length],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            // trailing: Icon(Icons.chevron_right_outlined,
                            //     color: Colors.grey[700], size: 22),
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
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      List<String> texts = [
                        "Deactivate Account",
                        "Delete Account",
                      ];

                      return Column(
                        children: [
                          ListTile(
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            leading: Text(
                              texts[index % texts.length],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                              ),
                            ),
                            trailing: Icon(Icons.chevron_right_outlined,
                                color: Colors.grey[700], size: 22),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
