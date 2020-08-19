import 'package:canvasstudent/screens/subject_detail.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (ctx) => Home(),
        SubjectDetail.route: (ctx) => SubjectDetail(),
      },
    );
  }
}
