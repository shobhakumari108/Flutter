import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
                    'Help',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
       
        ),
         body:SafeArea(child: SingleChildScrollView(
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
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      List<String> texts = [
                        "Report a problem",
                        "Account Status",
                        "Help Center",
                        "Privacy and Security Help",
                        "Suport Request"
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
                          if (index < 4)
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
         )
         
         )
    );
  }
}