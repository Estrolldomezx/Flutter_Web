import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: Text('This is Home from Desktop'),
        tablet: Text('This is Home from Tablet'),
        mobile: Text('This is Home from Mobile'),
        watch: Text('This is Home from Watch')
      ),
    );
  }
}