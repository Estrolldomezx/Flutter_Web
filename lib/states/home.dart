import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/calltoaction.dart';
import 'package:flutter_web/widgets/content.dart';
import 'package:flutter_web/widgets/navigate.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1366),
          child: ScreenTypeLayout(
            desktop: buildDesktop(),
            tablet: buildTabletAndMobile(),
            mobile: buildTabletAndMobile()
          ),
        ),
      ),
    );
  }

  Widget buildTabletAndMobile() => ListView(
    children: [
      NavigatorLayout(),
      CalltoActionLayout(),
      ContentLayout()
    ],
  );

  Widget buildDesktop() => Column(
    children: [
      NavigatorLayout(),
      Expanded(
        child: Row(
          children: [
            ContentLayout(),
            CalltoActionLayout(),
          ],
        ),
      ),
    ],
  );
}