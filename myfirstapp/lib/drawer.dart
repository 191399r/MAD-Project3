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
              decoration:BoxDecoration( image: DecorationImage(
          image: AssetImage("images/bus.jpg"),fit: BoxFit.cover)),
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
                        radius: 100.0,
                        backgroundImage:
                        NetworkImage('https://apprecs.org/gp/images/app-icons/300/d8/com.jerry.sbsNextBus.jpg'),
                      )
                    ),
                    SizedBox(height:15,),
                    Text('Worry Less Ride Now!', style:TextStyle(fontSize:16,fontWeight:FontWeight.bold,color:Colors.white),
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
              title:Text('About'),
              onTap:() => onTap(context, 1, 'About'),
            ),
            ListTile(
              leading:Icon(Icons.person),
              title:Text('Profile'),
              onTap:() => onTap(context, 2, 'Profile'),
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

