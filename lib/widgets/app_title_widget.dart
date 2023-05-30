import 'package:flutter/material.dart';

class AppTitleWidget extends StatelessWidget {
  final String title;
  const AppTitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
