import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(color: Colors.deepOrange),
        child: const Text("Screen A"),
      ),
    );
  }
}
