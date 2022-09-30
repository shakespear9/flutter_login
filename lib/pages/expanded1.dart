import 'package:flutter/material.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class Expanded1 extends StatelessWidget {
  const Expanded1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Expanded(
        flex: 3,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) => const MyBox(),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => const MyTile()),
            ),
          ],
        ),
      );
    });
  }
}
