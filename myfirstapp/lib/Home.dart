import 'package:flutter/material.dart';
import 'nestapi.dart';

class Home extends StatelessWidget {

  List<Value> BStops = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: BStops.length,
        itemBuilder: (context, index){
          return Card(
            child:ListTile(
              onTap: () {},
              title:Text(BStops[index].location),
            )
          )
        }
      )
    );
  }
}
