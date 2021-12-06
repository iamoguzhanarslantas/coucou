import 'package:coucou/views/base_view.dart';
import 'package:coucou/widgets/app_title_widget.dart';
import 'package:coucou/widgets/user_card_widget.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBar: AppBar(
          title: Text(
            'Users',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(
                  height: 20,
                ),
            itemCount: 10,
            itemBuilder: (_, index) => UserCardWidget()));
  }

  Widget _appBar(context) => AppBar(title: AppTitleWidget(title: 'Users'));
}
