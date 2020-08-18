import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Canvas Student"),
        ),
        body: Center(
          child: Text("Canvas Studnet"),
        ),
      ),
    );
  }
}
