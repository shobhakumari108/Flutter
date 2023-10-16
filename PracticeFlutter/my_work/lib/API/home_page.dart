import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_work/API/model.dart';

class HomeAPI extends StatefulWidget {
  const HomeAPI({super.key});

  @override
  State<HomeAPI> createState() => _HomeAPIState();
}

class _HomeAPIState extends State<HomeAPI> {
  List<SamplePost> samplePost = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: samplePost.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.grey.shade200,
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('User id: ${samplePost[index].phone}'),
                            Text("Id: ${samplePost[index].id}"),
                            Text(
                                'Address: ${samplePost[index].address?.city}, ${samplePost[index].address?.suite}, ${samplePost[index].address?.city}, ${samplePost[index].address?.zipcode}'),
                            Text(
                              "Title: ${samplePost[index].name}",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(
                              "Body: ${samplePost[index].email}",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
          ),
    );
  }

  Future<List<SamplePost>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (
        Map<String, dynamic> index in data
        ) {
        samplePost.add(SamplePost.fromJson(index)
        );
      }
      return samplePost;
    } else {
      return samplePost;
    }
  }
}



// https://jsonplaceholder.typicode.com/users
