import 'package:flutter/material.dart';
import 'dart:ui'; // Import this for ImageFilter.blur

class BlurScreen extends StatefulWidget {
  @override
  State<BlurScreen> createState() => _BlurScreenState();
}

class _BlurScreenState extends State<BlurScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                // color: Colors.blue,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 200),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                              // borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                              // borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                              // borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                              // borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                              // borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                              // borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Blurred content
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: Color.fromARGB(0, 9, 224, 9),
                ),
              ),

              SafeArea(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Container(
                      //   height: 20,
                      //   width: double.infinity,
                      //   color: Colors.white,
                      // ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Uncategorized',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 145,
                      ),
                      Icon(
                        Icons.lock,
                        size: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Text(
                        '~ COMING SOON ~',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
