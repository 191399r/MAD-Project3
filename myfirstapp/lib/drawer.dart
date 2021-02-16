import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

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
                    Text('Worry Less Ride Now!', style:TextStyle(fontSize:16,fontWeight:FontWeight.bold,color:Colors.white),
                    ),
                    SizedBox(height:3,),
                    Text('weird email placeholder', style:TextStyle(fontSize:12,color:Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading:Icon(Icons.home),
              title:Text('Home'),
              onTap:() => onTap(context, 0, 'Home'),
            ),
            ListTile(
              leading:Icon(Icons.person),
              title:Text('Profile'),
              onTap:() => onTap(context, 1, 'Profile'),
            ),
            ListTile(
              leading:Icon(Icons.exit_to_app),
              title:Text('Logout'),
              onTap:() => onTap(context, 0, 'Home'),
            ),
          ],
        )
      )
    );
  }
}

