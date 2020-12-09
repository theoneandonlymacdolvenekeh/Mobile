import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('I am Poor'),
          ),
          body: Center(
            child: Image(
              image: NetworkImage(
                  'https://static.thenounproject.com/png/213892-200.png'),
            ),
          ),
        ),
      ),
    );
