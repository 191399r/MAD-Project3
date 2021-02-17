import 'package:flutter/material.dart';
import 'package:myfirstapp/location.dart';
import 'nestapi.dart';

class Home extends StatelessWidget {

  List<Value> BStops = [
    Value(busStopCode: '01012',roadName: 'Victoria St', description: 'Hotel Grand Pacific', latitude: 1.29684825487647, longitude: 103.85253591654006),
    Value(busStopCode: '01013',roadName: 'Victoria St', description: 'St. Joseph\'s Ch', latitude: 1.29770970610083, longitude: 103.8532247463225),
    Value(busStopCode: '01019',roadName: 'Victoria St', description: 'Bras Basah Cplx', latitude: 1.29698951191332, longitude: 103.85302201172507),
    Value(busStopCode: '01029',roadName: 'Nth Bridge Rd', description: 'opp Natl Lib', latitude: 1.2966729849642, longitude: 103.85441422464267),
  ];

  @override
  Widget build(BuildContext context) {
    void _location() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Location()));
    }
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.all(10.0),
        itemCount: BStops.length,
        itemBuilder: (context, index){
          return Card(
            child:ListTile(
              onTap: _location,
              title:Text(BStops[index].busStopCode +'   '+ BStops[index].description, style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )
          );
        }
      )
    );
  }
}
