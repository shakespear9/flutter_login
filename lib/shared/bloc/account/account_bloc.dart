import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState(isLogin: false)) {
    on<AccountEventLogIn>(
      (event, emit) {
        emit(state.copyWith(status: true));
      },
    );
    on<AccountEventLogOut>(
      ((event, emit) {
        emit(state.copyWith(status: false));
      }),
    );
  }
}
