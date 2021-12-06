import 'package:flutter/material.dart';

class AppTitleWidget extends StatelessWidget {
  final String title;
  AppTitleWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(this.title,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold));
  }
}
