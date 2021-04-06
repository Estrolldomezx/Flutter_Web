import 'package:flutter/material.dart';

class CalltoActionLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        buildCenter(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Become a member',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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

  Center buildCenter() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildUser(),
          buildPassword(),
          buildLogin(),
        ],
      ),
    );
  }

  Container buildUser() => Container(
        margin: EdgeInsets.only(top: 40),
        width: 200,
        child: TextField(
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
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline),
            labelText: 'Password :',
            border: OutlineInputBorder(),
          ),
        ),
      );
}

class buildLogin extends StatelessWidget {
  const buildLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Login'),
      ),
    );
  }
}
