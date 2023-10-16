import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_work/API_Photo/PModel.dart';

class PHomeScreen extends StatefulWidget {
  const PHomeScreen({Key? key}) : super(key: key);

  @override
  State<PHomeScreen> createState() => _PHomeScreenState();
}

class _PHomeScreenState extends State<PHomeScreen> {
  List<ModelPhoto> Plist = [];

  Future<List<ModelPhoto>> getPostApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (response.statusCode == 200) {
      Plist.clear();
      var data = jsonDecode(response.body) as List;
      Plist = data.map((i) => ModelPhoto.fromJson(i)).toList();
      return Plist;
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
      body: FutureBuilder<List<ModelPhoto>>(
        future: getPostApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            List<ModelPhoto> Plist = snapshot.data!;
            return ListView.builder(
              itemCount: Plist.length,
              itemBuilder: (context, index) {
                // return ListTile(
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(Plist[index].albumId.toString()),
                      // Container(
                      //   //  child: Text(Plist[index].albumId.toString()),
                      //   // subtitle: Text(Plist[index].url.toString()),
                      //   // subtitle:
                      //   child: Image.network(Plist[index].url!.padLeft(8)),
                      // ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Color of the border
                            width: 2.0, // Width of the border
                          ),
                          borderRadius: BorderRadius.circular(
                              12.0), // Optional: adds rounded corners
                        ),
                        child: Image.network(
                          Plist[index].url!.padLeft(8),
                          fit: BoxFit
                              .cover, // Optional: adjusts the image's aspect ratio
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
