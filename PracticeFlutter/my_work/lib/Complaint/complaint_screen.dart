import 'package:flutter/material.dart';

class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  List<bool> itemSelected = List.filled(11, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select a problem to report",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "You can report this account if you think it goes against our community guidelines. We won't notify the account that you submitted this report.",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: 11,
                          itemBuilder: (context, index) {
                            List<String> texts = [
                              "Nudity or sexual activity",
                              "Hate speech",
                              "Scam or fraud",
                              "Violence or Dangerous organization",
                              "Sale of illegal or regulated goods",
                              "Bullying or harassment",
                              "Pretending to be someone else",
                              "Intellectual property violation",
                              "Suicide or self-injury",
                              "Spam",
                              "The problem isn't listed here"
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
                                  trailing: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        itemSelected[index] =
                                            !itemSelected[index];
                                      });
                                    },
                                    child: Icon(
                                      itemSelected[index]
                                          ? Icons.check_box
                                          : Icons.check_box_outline_blank,
                                      color: itemSelected[index]
                                          ? Colors.blue
                                          : Colors.grey[700],
                                      size: 22,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                if (index < 10)
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
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color.fromARGB(255, 211, 217, 253),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Reason',
                            hintText: 'Write your reason here',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF3C53D7),
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 5,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle form submission here
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF3C53D7),
                onPrimary: Colors.white,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                elevation: 0,
                minimumSize: Size(320.0, 50.0),
              ),
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
