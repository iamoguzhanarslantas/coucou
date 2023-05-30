import 'package:coucou/routes/routes.dart';
import 'package:coucou/styles/custom_theme.dart';
import 'package:coucou/views/home-view/home.dart';
import 'package:coucou/views/sign-in-view/sign_in.dart';
import 'package:coucou/views/splash-view/splash.dart';
import 'package:coucou/views/user-view/users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme,
      title: 'CouCou Chat',
      home: const Splash(),
      routes: {
        Routes.homeRoute: (_) => const Home(),
        Routes.usersRoute: (_) => const Users(),
        Routes.signInRoute: (_) => SignIn(),
      },
    );
  }
}
