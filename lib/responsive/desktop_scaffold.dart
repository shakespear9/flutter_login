import 'package:flutter/material.dart';
import 'package:flutter_login/constant.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/util/my_box.dart';
import 'package:flutter_login/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  DesktopScaffold({super.key, required this.child});

  final Widget child;

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackgroundColor,
      body: Row(children: [
        myDrawer(context),

        // LayoutBuilder(
        //     builder: (context, constraints) => Container(
        //           child: Text("asdsad"),
        //         ))
        const Flexible(child: HomePage())
        // LayoutBuilder(builder: (context, constraints) {
        //   return Expanded(
        //     flex: 3,
        //     child: Column(
        //       children: [
        //         AspectRatio(
        //           aspectRatio: 4,
        //           child: SizedBox(
        //             width: double.infinity,
        //             child: GridView.builder(
        //               itemCount: 4,
        //               gridDelegate:
        //                   const SliverGridDelegateWithFixedCrossAxisCount(
        //                       crossAxisCount: 4),
        //               itemBuilder: (context, index) => const MyBox(),
        //             ),
        //           ),
        //         ),
        //         Expanded(
        //           child: ListView.builder(
        //               itemCount: 5,
        //               itemBuilder: (context, index) => const MyTile()),
        //         ),
        //       ],
        //     ),
        //   );
        // }),
        // Expanded(
        //   flex: 1,
        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: Container(color: Colors.pink),
        //       )
        //     ],
        //   ),
        // )
        // const HomePage()
        // tiles below it
      ]),
    );
  }
}
