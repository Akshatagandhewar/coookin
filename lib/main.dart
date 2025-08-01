import 'package:cookin/Screen/Hompage.dart';
import 'package:cookin/Screen/scan.dart';
import 'package:cookin/Screen/text.dart';

import 'package:cookin/Screen/Login_Screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
     
      home: Textscreen(),
    );
  }
}
