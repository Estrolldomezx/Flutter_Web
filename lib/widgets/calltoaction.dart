import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/models/user_model.dart';
import 'package:flutter_web/states/my_service.dart';
import 'package:flutter_web/utilities/dialog.dart';
import 'package:flutter_web/utilities/my_constant.dart';

// ctrl+space to find
class CalltoActionLayout extends StatelessWidget {
  String user, password;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        buildCenter(context),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Become a member',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('No account ?'),
                TextButton(
                  onPressed: () {},
                  child: Text('Create a new account'),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }

  Center buildCenter(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildUser(),
          buildPassword(),
          buildLogin(context),
        ],
      ),
    );
  }

  Container buildLogin(BuildContext context) {
    return Container(
        width: 200,
        child: ElevatedButton(
          onPressed: () {
            print('user = $user, password = $password'); //see in terminal
            if ((user == null || user.isEmpty) ||
                (password == null || password.isEmpty)) {
              print('Wrong username or password');
              normalDialog(context, 'Login Failed',
                  'Please change your username or password');
            } else {
              print('Login successful');
              checkAuthen(context);
            }
          },
          child: Text('Login'),
        ));
  }

  Future<Null> checkAuthen(BuildContext context) async {
    String path =
        '${MyConstant().domain}/flutter_web/getUserWhereUser.php?isAdd=true&user=$user'; //use http
    await Dio().get(path).then((value) {
      print('### value = $value');
      if (value.toString() != 'null') {
        var result = json.decode(value.data); //decode from every language input
        print('### result = $result');
        for (var item in result) {
          UserModel model = UserModel.fromMap(item);
          print('welcome ${model.name} !');
          if (password == model.password) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => MyService(userModel: model)),
                (route) => false);
          } else {
            normalDialog(context, 'Password Failed', 'Please try again');
          }
        }
      } else {
        normalDialog(context, 'User Failed', 'No $user in my database');
      }
    });
  }

  Container buildUser() => Container(
        margin: EdgeInsets.only(top: 40),
        width: 200,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.perm_identity),
            labelText: 'Username :',
            border: OutlineInputBorder(),
          ),
        ),
      );
  Container buildPassword() => Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        width: 200,
        child: TextField(
          obscureText: true, //hide the password
          onChanged: (value) => password = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline),
            labelText: 'Password :',
            border: OutlineInputBorder(),
          ),
        ),
      );
}
