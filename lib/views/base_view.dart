import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  final AppBar appBar;
  final Widget child;

  const BaseView({Key? key, required this.child, required this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
