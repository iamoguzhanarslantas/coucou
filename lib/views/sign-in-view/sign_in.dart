import 'package:coucou/views/base_view.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  final TextEditingController name = TextEditingController();

  signIn() {
    if (name.text.trim().length > 0) {
      print('OK!');
    } else {
      print('Nope!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: new AppBar(),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _greetingText(context),
            SizedBox(height: 28),
            _textField,
          ],
        ),
      ),
    );
  }

  Widget _greetingText(context) => Text(
        'Welcome to CouCouApp',
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black),
      );

  Widget get _textField => TextField(
        controller: name,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              color: Colors.red,
              icon: Icon(Icons.keyboard_arrow_right_outlined),
              onPressed: signIn,
            ),
            filled: true,
            hintText: 'Your CouCouName?'),
      );
}
