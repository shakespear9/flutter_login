import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/shared/bloc/account/account_bloc.dart';

final myDefaultBackgroundColor = Colors.grey[300];

final myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

myDrawer(BuildContext context) => Drawer(
      backgroundColor: Colors.grey[300],
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("D A S H B O A R D"),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("M E S S A G E"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("L O G O U T"),
            onTap: () => context.read<AccountBloc>().add(AccountEventLogOut()),
          ),
        ],
      ),
    );
