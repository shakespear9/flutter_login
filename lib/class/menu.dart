import 'package:flutter/material.dart';

class Menu {
  Menu(
      {required this.leadingIcon,
      required this.title,
      required this.destination,
      this.onBeforeNavigate});

  final Icon leadingIcon;
  final String title;
  final String destination;
  final VoidCallback? onBeforeNavigate;
}
