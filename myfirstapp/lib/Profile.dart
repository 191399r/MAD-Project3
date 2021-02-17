import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height:10),
        CircleAvatar(
          radius: 130.0,
          backgroundImage:
          AssetImage("images/busicon.jpg"),
          backgroundColor: Colors.transparent,
        ),
        Text('Welcome, User!', style:TextStyle(fontSize: 30, fontWeight:FontWeight.bold,)),
      ],
      ),
    );
  }
}
