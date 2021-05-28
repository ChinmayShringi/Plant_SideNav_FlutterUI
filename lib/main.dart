import 'package:flutter/material.dart';
import 'package:plant2/widgets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff67864A),
      ),
      home: HomePage(),
    );
  }
}
