import 'package:flutter/material.dart';
import 'package:myfirstapp/Home.dart';
import 'package:myfirstapp/authenticate/authenticate.dart';
import 'package:myfirstapp/authenticate/sign_in.dart';
import 'user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);


    if (user == null) {
      return Authenticate();
    }
    return Home();
  }
}

