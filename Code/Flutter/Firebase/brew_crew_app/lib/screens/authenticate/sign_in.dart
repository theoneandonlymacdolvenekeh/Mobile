import 'package:brewcrewapp/models/user.dart';
import 'package:brewcrewapp/services/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:brewcrewapp/screens/home/home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
        elevation: 0.0,
        title: Text('sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Signn in anom'),
          onPressed: () async {
            dynamic login = await _auth.signInAnon();
            if (login != null) {
              print('signed in');
              print(login);
            } else {
              print('error sign in');
            }
          },
        ),
      ),
    );
  }
}
