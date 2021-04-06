import 'package:flutter/material.dart';
import 'package:flutter_web/utilities/my_constant.dart';

class ContentLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      // color: Colors.green.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Content 1',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Text(MyConstant().lorem),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Content 2',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Text(MyConstant().lorem),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Content 3',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Text(MyConstant().lorem),
        ],
      ),
    );
  }
}
