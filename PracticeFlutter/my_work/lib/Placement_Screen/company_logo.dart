import 'package:flutter/material.dart';

class RoundedLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle, // Use a rounded rectangle shape
        borderRadius: BorderRadius.circular(
            12.0), // Adjust the radius based on your preference
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple,
            Colors.white,
          ],
        ),
      ),
      child: ClipOval(
        child: Center(
          child: Icon(
            Icons.business,
            size: 40.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
