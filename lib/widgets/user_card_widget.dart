import 'package:coucou/core/string_extensions.dart';
import 'package:flutter/material.dart';

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
                .headlineSmall
                ?.copyWith(color: Colors.white)),
      ),
      title: Text(
        'John',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.message),
      ),
    );
  }
}
