import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child:Drawer(
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children:<Widget>[
            DrawerHeader(
              decoration:BoxDecoration(color:Colors.blue),
              child:Padding(
                padding:EdgeInsets.all(6),
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:<Widget>[
                    Container(
                      width:60,
                      height:60,
                      child:CircleAvatar(
                        backgroundImage:AssetImage('images/superhero.jpg'),
                      ),
                    ),
                    SizedBox(height:15,),
                    Text('Super Hero', style:TextStyle(fontSize:16,fontWeight:FontWeight.bold,color:Colors.white),
                    ),
                    SizedBox(height:3,),
                    Text('weird email placeholder', style:TextStyle(fontSize:12,color:Colors.white),
                    ),
                  ]
                )
              )
            )
          ]
        )
      )
    );
  }
}

