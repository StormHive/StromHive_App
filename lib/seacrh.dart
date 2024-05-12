import 'package:flutter/material.dart';

class AppSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.toLowerCase() == 'web projects' ||
        query.toLowerCase() == 'website projects') {
      return ListTile(
        title: Text('Website Projects'),
        onTap: () {
          close(context, 'website');
        },
      );
    } else if (query.toLowerCase() == 'mobile' ||
        query.toLowerCase() == 'apps' ||
        query.toLowerCase() == 'mobile projects') {
      return ListTile(
        title: Text('Mobile Projects'),
        onTap: () {
          close(context, 'mobile');
        },
      );
    } else if (query.toLowerCase() == 'automation' ||
        query.toLowerCase() == 'tools') {
      return ListTile(
        title: Text('Automation Tools'),
        onTap: () {
          close(context, 'automation');
        },
      );
    }

    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
