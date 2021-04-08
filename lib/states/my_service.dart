import 'package:flutter/material.dart';
import 'package:flutter_web/models/user_model.dart';

class MyService extends StatefulWidget {
  final UserModel userModel;
  MyService({@required this.userModel});
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {

  UserModel model;
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      model = widget.userModel;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Welcome! ${model.name}'),
    );
  }
}