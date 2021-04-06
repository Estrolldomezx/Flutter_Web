import 'package:flutter/material.dart';

class ContentLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      color: Colors.green.shade100,
      child: Center(child: Text('This is Content'))
    );
  }
}
