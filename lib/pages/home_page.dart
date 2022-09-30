import 'package:flutter/material.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1100) {
          return Column(
            children: [
              // 4 box on the top
              AspectRatio(
                aspectRatio: constraints.maxWidth < 500 ? 1 : 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: constraints.maxWidth < 500 ? 2 : 4),
                      itemBuilder: (context, index) => const MyBox()),
                ),
              ),
              // tiles below it
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => const MyTile()),
              )
            ],
          );
        }

        // return Container(
        //   child: Text("adasdasd"),
        // );

        return Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Container(color: Colors.pink),
                  )
                ],
              ),
            )
          ],
        );

        // , Expanded(
        //         flex: 1,
        //         child: Column(
        //           children: [
        //             Expanded(
        //               child: Container(color: Colors.pink),
        //             )
        //           ],
        //         ),
        //       );

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
      },
    );
  }
}


//  body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("signed in"),
//             ElevatedButton(
//               onPressed: () =>
//                   context.read<AccountBloc>().add(AccountEventLogOut()),
//               child: const Text("sign out"),
//             )
//           ],
//         ),
//       ),