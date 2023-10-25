import 'package:flutter/material.dart';
import 'dart:ui'; // Import this for ImageFilter.blur

class BlurScreen2 extends StatefulWidget {
  @override
  State<BlurScreen2> createState() => _BlurScreen2State();
}

class _BlurScreen2State extends State<BlurScreen2> {
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
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
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
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 69, 49, 1.0),
                              // Adjust the radius value
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
                  color: Color.fromRGBO(18, 69, 49, 1.0),
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
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Trends',
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
