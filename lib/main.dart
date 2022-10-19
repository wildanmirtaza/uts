import 'package:flutter/material.dart';
import 'package:uts/uts/bottomnavigation.dart';
import 'package:uts/uts/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: BottomNavPage(),
      ),
    );
  }
}