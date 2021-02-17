import 'package:flutter/material.dart';
import 'About.dart';
import 'drawer.dart';
import 'Profile.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Worry Less Ride Now!'),
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
