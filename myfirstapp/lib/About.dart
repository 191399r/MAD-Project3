import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('images/about.jpg'),
        SizedBox(height:10),
        Text('About Us', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:Colors.pink)),
        SizedBox(height:10),
        RichText(
            text: TextSpan(
            text: 'This project is commenced by Dominic Chan for module Mobile App Dev. This project is meant to help the user locate bus stops using google imagery and inform them of bus stops near them', style: TextStyle(color: Colors.black, fontSize: 18),),),
      ],
    );
  }
}
