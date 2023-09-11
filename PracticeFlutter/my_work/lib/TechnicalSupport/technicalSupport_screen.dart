import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  List<File> _images = [];

  Future<void> _getImage() async {
    final List<XFile>? pickedImages = await ImagePicker().pickMultiImage();

    if (pickedImages != null) {
      if (_images.length + pickedImages.length > 5) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('You can select up to 5 images in total.'),
          ),
        );
      } else {
        setState(() {
          _images.addAll(pickedImages.map((XFile image) => File(image.path)));
        });
      }
    }
  }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

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
          "Technical Support",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Title",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 217, 253),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        hintText: "Enter a title",
                        contentPadding: EdgeInsets.all(16.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20.0),

                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color.fromARGB(255, 211, 217, 253),
                    ),
                    child: TextField(
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        hintText: "Enter a description",
                        contentPadding: EdgeInsets.all(16.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20.0),

                  // Display selected images in a row
                  if (_images.isNotEmpty)
                    Container(
                      height: 100.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 8.0),
                                width: 100.0,
                                height: 100.0,
                                child: Image.file(_images[index],
                                    fit: BoxFit.cover),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.cancel,
                                  ),
                                  onPressed: () => _removeImage(index),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                  SizedBox(height: 20.0),

                  ElevatedButton(
                    onPressed: () => _getImage(),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 211, 217, 253),
                      onPrimary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 0,
                      minimumSize: Size(200.0, 50.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.camera_alt, color: Colors.black54),
                        SizedBox(width: 8.0),
                        Text(
                          "Upload Photo",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle form submission here
              String title = _titleController.text;
              String description = _descriptionController.text;

              print("Title: $title");
              print("Description: $description");
              print("Selected Images: $_images");
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
    );
  }
}
