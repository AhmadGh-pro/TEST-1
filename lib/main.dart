import 'package:flutter/material.dart';
import 'package:flutter_application_5/home.dart';
import 'package:flutter_application_5/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(), routes: {'Page 1': (context) => Page1()});
  }
}
