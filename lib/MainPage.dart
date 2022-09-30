import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/pages/login_page.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/responsive/desktop_scaffold.dart';
import 'package:flutter_login/responsive/mobile_scaffold.dart';
import 'package:flutter_login/responsive/responsive_layout.dart';
import 'package:flutter_login/responsive/tablet_scaffold.dart';
import 'package:flutter_login/shared/bloc/account/account_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final account = BlocProvider(create: (context) => AccountBloc());

    return MultiBlocProvider(
      providers: [account],
      child: Scaffold(
        // body: StreamBuilder<User?>(
        //     // stream: FirebaseAuth.instance.authStateChanges(),
        //     builder: ((context, snapshot) {
        //   if (snapshot.hasData) {
        //     return HomePage();
        //   } else {
        //     return LoginPage();
        //   }
        // })),
        body: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) {
            return state.isLogin
                ? LayoutBuilder(
                    builder: (context, constraints) {
                      return ResponsiveLayout(
                        desktopScaffold:
                            const DesktopScaffold(child: HomePage()),
                        mobileScaffold: MobileScaffold(child: const HomePage()),
                        tabletScaffold: TabletScaffold(
                          child: const HomePage(),
                        ),
                      );
                    },
                  )
                : const LoginPage();
          },
        ),
      ),
    );
  }
}
