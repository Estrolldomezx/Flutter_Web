import 'package:flutter/material.dart';
import 'package:flutter_web/states/home.dart';
import 'states/show_imgs.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context)=>Home(),
  '/showImages': (BuildContext context)=>ShowImages(),
};

String initialRoute = '/home';

main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: initialRoute,
    );
  }
}
