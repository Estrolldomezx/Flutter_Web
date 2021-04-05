import 'package:flutter/material.dart';
import 'package:flutter_web/states/home.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context)=>Home(),
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
