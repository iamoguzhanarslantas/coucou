import 'package:coucou/views/home-view/home.dart';
import 'package:flutter/cupertino.dart';

abstract class HomeState extends State<Home> {
  TextEditingController message = TextEditingController();
  bool showIcons = true;
  sendMessage() {
    print(message.text);
  }
}
