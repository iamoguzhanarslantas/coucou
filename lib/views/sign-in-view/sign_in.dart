import 'package:coucou/views/base_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  final TextEditingController name = TextEditingController();

  SignIn({Key? key}) : super(key: key);

  signIn() {
    if (name.text.trim().isNotEmpty) {
      if (kDebugMode) {
        print('OK!');
      }
    } else {
      if (kDebugMode) {
        print('Nope!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: AppBar(),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _greetingText(context),
            const SizedBox(height: 28),
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
            .headlineSmall
            ?.copyWith(color: Colors.black),
      );

  Widget get _textField => TextField(
        controller: name,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            color: Colors.red,
            icon: const Icon(Icons.keyboard_arrow_right_outlined),
            onPressed: signIn,
          ),
          filled: true,
          hintText: 'Your CouCouName?',
        ),
      );
}
