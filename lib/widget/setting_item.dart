// ignore_for_file: duplicate_import, unused_import, use_key_in_widget_constructors, unused_label, unused_element, empty_statements

import 'package:education_app/widgets/forward_button.dart';
import 'package:education_app/widgets/forward_button.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function() onTap;
  final String? value;
  const SettingItem({
    Key? key,
    required this.title,
    required this.bgColor,
    required this.iconColor,
    required this.icon,
    required this.onTap,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          value != null
              ? Text(
                  value!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                )
              : const SizedBox(),
          const SizedBox(width: 20),
          ForwardButton(
            onTap: () {
              onTap:
              () async {
                List<String>? searchedItems = await showSearch(
                  context: context,
                  delegate: SearchBarDelegate(),
                );

                if (searchedItems != null && searchedItems.isNotEmpty) {
                  onTap() {}
                  ;
                }
              };
            },
          ),
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<List<String>> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, []);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement your search logic here
    // Retrieve the searched items based on the query
    List<String> searchedItems = performSearch(query);

    return ListView.builder(
      itemCount: searchedItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchedItems[index]),
          onTap: () {
            close(context, [searchedItems[index]]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(); // Placeholder widget for the search suggestions
  }

  List<String> performSearch(String query) {
    // Implement your search logic here
    // Return the searched items as a list
    // This is just a placeholder implementation
    return [
      'Result 1 for $query',
      'Result 2 for $query',
      'Result 3 for $query',
    ];
  }
}
