part of 'account_bloc.dart';

class AccountState extends Equatable {
  final bool isLogin;
  final List<Menu> menus;

  const AccountState({required this.isLogin, this.menus = const []});

  AccountState copyWith({bool? status, required List<Menu> menus}) {
    return AccountState(isLogin: status ?? !isLogin, menus: menus);
  }

  @override
  String toString() {
    return "isLogin : $isLogin";
  }

  // ระบุว่า track การเปลี่ยนแปลงของ state ตัวไหนบ้าง
  @override
  List<Object> get props => [isLogin];
}
