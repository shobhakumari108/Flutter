import 'package:flutter/material.dart';

class FaqContactusScreen extends StatelessWidget {
  final List<FAQ> faqList = [
    FAQ('How do I start practicing for placements?',
        'You can start practicing by selecting the "Placement Practice" option on the main screen of the app. It will provide you with a set of practice questions and mock tests tailored for placement preparation.'),
    FAQ('Can I track my progress and performance?',
        'Yes, you can track your progress by accessing the "Performance Dashboard" from the main menu. It will show you detailed statistics about your performance in different topics and mock tests.'),
    FAQ('Is there a feature for practicing communication skills?',
        'Yes, you can practice communication skills by selecting the "Communication Practice" option from the main screen. It will provide exercises and tips for improving your communication abilities.'),
    FAQ('How do I reset my password?',
        'You can reset your password by going to the Settings > Account > Change Password section. Follow the prompts to reset your password.'),
    FAQ('I encountered a technical issue. What should I do?',
        'If you encounter any technical issues, please go to the Settings > Help & Support > Contact Us section. Provide details about the issue, and our support team will assist you as soon as possible.'),
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
                  'Faq/contact us',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView(
                  shrinkWrap: true,
                  children: faqList.map((FAQ item) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ExpansionTile(
                        title: Text(
                          item.question,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                          softWrap: true,
                        ),
                        children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            title: Text(
                              item.answer,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Details',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Address: Your Address Here',
                        style: TextStyle(fontSize: 16),
                      ),
                      Divider(),
                      Text(
                        'Email: your@email.com',
                        style: TextStyle(fontSize: 16),
                      ),
                      Divider(),
                      Text(
                        'Web: www.yourwebsite.com',
                        style: TextStyle(fontSize: 16),
                      ),
                      Divider(),
                      Text(
                        'Contact: +1234567890',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
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

class FAQ {
  final String question;
  final String answer;

  FAQ(this.question, this.answer);
}
