import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/MainPage.dart';
import 'package:flutter_login/router.dart';
import 'package:flutter_login/shared/bloc/account/account_bloc.dart';
import 'package:flutter_login/shared/bloc/app_bloc_ovserver.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final account = BlocProvider(create: (context) => AccountBloc());
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [account],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: appRouter,
      ),
    );
  }
}
