import 'package:flutter/material.dart';
import 'package:flutterclippathexample/screens/clip_path.dart';
import 'package:flutterclippathexample/screens/custom_painter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyCustomPaint(), // MyHomePage(),
    );
  }
}
