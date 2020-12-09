import 'package:brewcrewapp/screens/authenticate/authenticate.dart';
import 'package:brewcrewapp/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:brewcrewapp/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Todo: home or auth widget
    final user = Provider.of<User>(context);
    print(user);

    if (user != null) {
      return Home();
    } else {
      return Authentication();
    }
  }
}
