import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/class/menu.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState(isLogin: false)) {
    on<AccountEventLogIn>(
      (event, emit) {
        var menus = [
          Menu(
              leadingIcon: const Icon(Icons.home),
              title: "Home",
              destination: "/home",
              onBeforeNavigate: () => {}),
          Menu(
              leadingIcon: const Icon(Icons.settings),
              title: "Setting",
              destination: "/setting",
              onBeforeNavigate: () => {}),
          Menu(
              leadingIcon: const Icon(Icons.abc),
              title: "A",
              destination: "/a",
              onBeforeNavigate: () => {}),
        ];

        emit(state.copyWith(status: true, menus: menus));
      },
    );
    on<AccountEventLogOut>(
      ((event, emit) {
        emit(state.copyWith(status: false, menus: const []));
      }),
    );
  }
}
