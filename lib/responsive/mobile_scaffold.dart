import 'package:flutter/material.dart';
import 'package:flutter_login/constant.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/util/my_box.dart';
import 'package:flutter_login/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  MobileScaffold({super.key, required this.child});

  final Widget child;

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackgroundColor,
        drawer: myDrawer(context),
        body: widget.child);
  }
}
