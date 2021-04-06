import 'package:flutter/material.dart';
// ctrl+space for find package

class NavigatorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Colors.pink.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 80,
                child: Image(
                  image: AssetImage('images/logo.png'),
                ),
              ),
              SizedBox(width: 20),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Draveler',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text('fulfill & keep calm')
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(onPressed: () {}, child: Text('HOME')),
              TextButton(onPressed: () {}, child: Text('ABOUT')),
            ],
          ),
        ],
      ),
    );
  }
}
