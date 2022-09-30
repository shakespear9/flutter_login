import 'package:flutter/material.dart';
import 'package:flutter_login/constant.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/util/my_box.dart';
import 'package:flutter_login/util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  TabletScaffold({super.key, required this.child});

  final Widget child;

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackgroundColor,
        drawer: myDrawer(context),
        body: HomePage());
  }
}
