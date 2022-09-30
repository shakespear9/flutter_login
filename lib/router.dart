import 'package:flutter/material.dart';
import 'package:flutter_login/pages/a_page.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/pages/login_page.dart';
import 'package:flutter_login/pages/setting_page.dart';
import 'package:flutter_login/responsive/desktop_scaffold.dart';
import 'package:flutter_login/responsive/mobile_scaffold.dart';
import 'package:flutter_login/responsive/responsive_layout.dart';
import 'package:flutter_login/responsive/tablet_scaffold.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final appRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: "/login",
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ResponsiveLayout(
            desktopScaffold: DesktopScaffold(child: child),
            mobileScaffold: MobileScaffold(child: child),
            tabletScaffold: TabletScaffold(
              child: child,
            ),
          );
        },
        routes: <RouteBase>[
          GoRoute(
            path: "/home",
            builder: (context, state) => HomePage(),
          ),
          GoRoute(
            path: "/setting",
            builder: (context, state) => const SettingPage(),
          ),
          GoRoute(
            path: "/a",
            builder: (context, state) => const APage(),
          ),
        ],
      ),
      GoRoute(
        path: "/login",
        builder: (context, state) => const LoginPage(),
      )
    ]);
