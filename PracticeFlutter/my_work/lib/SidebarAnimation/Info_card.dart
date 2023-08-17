import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.name, required this.profession});

    final String name, profession;

    

  @override
  Widget build(BuildContext context) {
    return  ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                ),
                title: Text(name,
                    style: TextStyle(
                      color: Colors.white,
                    )),
                subtitle: Text(profession,
                    style: TextStyle(
                      color: Colors.white,
                    )),
              );
  }
}