import 'package:brewcrewapp/services/services.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown.shade400,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                _auth.signOut();
              },
              icon: Icon(
                Icons.person,
              ),
              label: Text('Logout'))
        ],
      ),
    );
  }
}
