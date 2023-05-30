import 'package:coucou/views/home-view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

abstract class HomeState extends State<Home> {
  TextEditingController message = TextEditingController();
  bool showIcons = true;
  sendMessage() {
    if (kDebugMode) {
      print(message.text);
    }
  }
}
