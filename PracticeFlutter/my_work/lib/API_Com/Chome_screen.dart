import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_work/API_Com/C_Model.dart';
import 'dart:convert';
// import 'cmodel.dart'; // Assuming you've imported your data model classes

class CHome extends StatefulWidget {
  const CHome({Key? key}) : super(key: key);

  @override
  State<CHome> createState() => _CHomeState();
}

class _CHomeState extends State<CHome> {
  List<CModel> userList = [];

  Future<void> getUserApi() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 200) {
        List<dynamic> jsonList = json.decode(response.body);
        List<CModel> users =
            jsonList.map((json) => CModel.fromJson(json)).toList();

        setState(() {
          userList = users;
        });
      } else {
        throw Exception('Failed to load users');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    getUserApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: userList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: userList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Text(userList[index].name!),
                    Text(userList[index].email ?? ''),
                    Text(
                      'Address: ${userList[index].address?.street ?? ''}, ${userList[index].address?.suite ?? ''}, ${userList[index].address?.city ?? ''}, ${userList[index].address?.zipcode ?? ''}',
                    ),
                    Text(
                      'Geo: ${userList[index].address?.geo?.lat ?? ''}, ${userList[index].address?.geo?.lng ?? ''}',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
            ),
    );
  }
}
