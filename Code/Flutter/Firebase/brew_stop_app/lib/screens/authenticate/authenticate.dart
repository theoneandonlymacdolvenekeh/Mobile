import 'package:brewcrewapp/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}
