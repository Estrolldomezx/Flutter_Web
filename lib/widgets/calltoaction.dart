import 'package:flutter/material.dart';
import 'package:flutter_web/utilities/dialog.dart';
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
          if ((user == null || user.isEmpty) || (password == null || password.isEmpty)) {
            print('Wrong username or password');
            normalDialog(context, 'Login Failed', 'Please change your username or password');
          }
          else {
            print('Login successful');
          }
        },
        child: Text('Login'),
      )
    );
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
          onChanged: (value) => password = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline),
            labelText: 'Password :',
            border: OutlineInputBorder(),
          ),
        ),
      );
}

