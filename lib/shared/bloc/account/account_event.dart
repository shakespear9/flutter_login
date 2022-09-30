part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();

  @override
  List<Object> get props => [];
}

class AccountEventLogIn extends AccountEvent {}

class AccountEventLogOut extends AccountEvent {}
