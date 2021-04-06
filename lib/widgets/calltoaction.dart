import 'package:flutter/material.dart';

class CalltoActionLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        //width: 600,
        child: Container(
          color: Colors.purple.shade100,
          child: Center(
            child: Text('This is Call to Action')),
        ));
  }
}
