import 'package:coucou/routes/routes.dart';
import 'package:coucou/styles/custom_theme.dart';
import 'package:coucou/views/home-view/home.dart';
import 'package:coucou/views/sign-in-view/sign_in.dart';
import 'package:coucou/views/splash-view/splash.dart';
import 'package:coucou/views/user-view/users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme,
      title: 'CouCou Chat',
      home: Splash(),
      routes: {
        Routes.homeRoute: (_) => Home(),
        Routes.usersRoute: (_) => Users(),
        Routes.signInRoute: (_) => SignIn(),
      },
    );
  }
}
