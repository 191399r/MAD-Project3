import 'package:flutter/material.dart';
import 'package:myfirstapp/authenticate/sign_in.dart';
import 'package:myfirstapp/services/auth.dart';
import 'package:myfirstapp/wrapper.dart';
import 'About.dart';
import 'drawer.dart';
import 'Profile.dart';
import 'Home.dart';
import 'package:provider/provider.dart';
import 'package:myfirstapp/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value:AuthService().user,
      child:MaterialApp(
      home: Wrapper(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String title = 'Home';
int index = 0;
List<Widget> list = [Home(),About(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //body: Home(),
      //drawer: MyDrawer(),
      body: list[index],
      drawer: MyDrawer(onTap:(context,i,txt){
        setState((){
          index = i;
          title = txt;
          Navigator.pop(context);
        });
      })
    );
  }
}
