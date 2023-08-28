import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  DetailPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Music',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(125.0),
                child: Image.asset(
                  'assets/natural.jpg',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Top Rooms",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam viverra, neque in porttitor viverra, arcu mi eleifend ligula, eu elementum elit velit ac libero. Sed eget leo ac urna eleifend tempus. Fusce in neque bibendum, luctus enim eget, dignissim justo. Etiam at odio vitae leo vehicula porttitor. Nulla facilisi. Suspendisse potenti. Vivamus lacinia lacus sed mi bibendum, quis cursus arcu auctor. Sed suscipit bibendum lacinia. Maecenas a nulla euismod, auctor ipsum ut, lacinia ex. Vestibulum luctus nibh et ligula efficitur, vel scelerisque tortor cursus. Pellentesque justo velit, semper eget risus ut, cursus vulputate odio. In id neque ut lorem feugiat vehicula ac nec nunc. Nam nec vehicula dolor. Nam nec suscipit risus. Fusce tristique a urna eu facilisis.',
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
