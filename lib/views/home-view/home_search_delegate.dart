import 'package:coucou/widgets/message_bubble_widget.dart';
import 'package:flutter/material.dart';

class HomeSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(
          Icons.delete,
        ),
        onPressed: () {},
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.keyboard_arrow_left),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(height: 15),
        itemCount: 5,
        itemBuilder: (_, index) => MessageBubbleWidget(index: index),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Column();
  }
}
