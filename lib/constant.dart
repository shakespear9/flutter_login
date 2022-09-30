import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/shared/bloc/account/account_bloc.dart';
import 'package:go_router/go_router.dart';

final myDefaultBackgroundColor = Colors.grey[300];

final myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

myDrawer(BuildContext context) {
  final menus = context.read<AccountBloc>().state.menus;

  void signOut() {
    context.read<AccountBloc>().add(AccountEventLogOut());
    GoRouter.of(context).go("/login");
  }

  return Drawer(
    backgroundColor: Colors.grey[300],
    child: Column(
      children: [
        const DrawerHeader(child: Icon(Icons.favorite)),
        for (final route in menus)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: ListTile(
              leading: route.leadingIcon,
              title: Text(route.title),
              onTap: () {
                var callback = route.onBeforeNavigate ?? () {};
                callback();
                GoRouter.of(context).go(route.destination);
              },
            ),
          ),
        // const MouseRegion(
        //   cursor: SystemMouseCursors.click,
        //   child: ListTile(
        //     leading: Icon(Icons.home),
        //     title: Text("D A S H B O A R D"),
        //   ),
        // ),
        // const ListTile(
        //   leading: Icon(Icons.chat),
        //   title: Text("M E S S A G E"),
        // ),
        // const ListTile(
        //   leading: Icon(Icons.settings),
        //   title: Text("S E T T I N G S"),
        // ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("L O G O U T"),
          onTap: signOut,
        ),
      ],
    ),
  );
}
