import 'package:coucou/routes/routes.dart';
import 'package:coucou/views/base_view.dart';
import 'package:coucou/views/home-view/home_search_delegate.dart';
import 'package:coucou/views/home-view/home_state.dart';
import 'package:coucou/widgets/message_bubble_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends HomeState {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.people),
            onPressed: () => Navigator.of(context).pushNamed(Routes.usersRoute),
          ),
          actions: [
            IconButton(
              color: Colors.white,
              tooltip: 'Search',
              icon: Icon(Icons.search),
              onPressed: () =>
                  showSearch(context: context, delegate: HomeSearchDelegate()),
            )
          ],
          title: Image.asset('assets/images/logoname1.png'),
        ),
        child: Column(
          children: [
            _messages,
            _sendMessage,
          ],
        ));
  }

  Widget get _messages => Expanded(
      child: ListView.separated(
          separatorBuilder: (_, __) => SizedBox(height: 15),
          itemCount: 5,
          itemBuilder: (_, index) => MessageBubbleWidget(index: index)));

  Widget get _sendMessage => TextField(
        controller: message,
        onChanged: (String text) {
          print(text);
          if (text.length > 0) {
            setState(() => showIcons = false);
          } else {
            setState(() => showIcons = true);
          }
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.amber,
            suffixIcon: Wrap(
              children: [
                showIcons
                    ? IconButton(
                        icon: Icon(Icons.image),
                        onPressed: () {},
                      )
                    : SizedBox.shrink(),
                showIcons
                    ? IconButton(
                        icon: Icon(Icons.location_on),
                        onPressed: () {},
                      )
                    : SizedBox.shrink(),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            )),
      );
}
