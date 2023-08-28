import 'package:flutter/material.dart';
import 'package:my_work/Search/room.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget buildParticipant(String name) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage('assets/natural.jpg'),
              fit: BoxFit.cover,
            ),
          ),
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
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search...',

                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                // contentPadding: EdgeInsets.zero,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Room(),
                Room(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Top People',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                buildParticipant('People 1'),
                SizedBox(width: 15),
                buildParticipant('People 2'),
                SizedBox(width: 15),
                buildParticipant('People 3'),
              ],
            ),
            SizedBox(height: 20),
             Row(
              children: [
                buildParticipant('People 1'),
                SizedBox(width: 15),
                buildParticipant('People 2'),
                SizedBox(width: 15),
                buildParticipant('People 3'),
              ],
            ),
            
          ],
        ),
      )),
    ));
  }
}
