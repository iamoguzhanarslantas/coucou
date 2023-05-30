import 'package:flutter/material.dart';

class MessageBubbleWidget extends StatelessWidget {
  final int index;

  const MessageBubbleWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: index % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
            color: index % 2 == 0 ? Colors.blueAccent : Colors.blueGrey,
            borderRadius: BorderRadius.circular(28)),
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * .5,
        child: Text(
          'merhaba $index',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
