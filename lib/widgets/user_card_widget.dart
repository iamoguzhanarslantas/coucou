import 'package:flutter/material.dart';
import '../core/string_extensions.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 28,
        child: Text('j'.firstLetter,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white)),
      ),
      title: Text(
        'John',
        style: Theme.of(context).textTheme.headline5,
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.message),
      ),
    );
  }
}
