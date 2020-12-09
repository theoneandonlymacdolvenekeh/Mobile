import 'package:brewcrewapp/models/user.dart';
import 'package:brewcrewapp/screens/wrapper.dart';
import 'package:brewcrewapp/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(BrewCrewApp());

class BrewCrewApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
