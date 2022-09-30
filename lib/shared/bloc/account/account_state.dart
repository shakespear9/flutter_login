part of 'account_bloc.dart';

class AccountState extends Equatable {
  final bool isLogin;

  const AccountState({required this.isLogin});

  AccountState copyWith({bool? status}) {
    return AccountState(isLogin: status ?? !isLogin);
  }

  @override
  String toString() {
    return "count : $isLogin";
  }

  // ระบุว่า track การเปลี่ยนแปลงของ state ตัวไหนบ้าง
  @override
  List<Object> get props => [isLogin];
}
