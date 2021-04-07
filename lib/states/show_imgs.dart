import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/navigate.dart';

class ShowImages extends StatefulWidget {
  @override
  _ShowImagesState createState() => _ShowImagesState();
}

class _ShowImagesState extends State<ShowImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigatorLayout(),
    );
  }
}