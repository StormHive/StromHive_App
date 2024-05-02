import 'package:flutter/material.dart';
import 'websites.dart';

class WebsiteProjectsScreen extends StatelessWidget {
  const WebsiteProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Website Projects'),
      ),
      body: ListView.builder(
        itemCount: Websites.projects.length,
        itemBuilder: (context, index) {
          final project = Websites.projects[index];
          return ListTile(
            title: Text(project.title),
            subtitle: Text(project.description),
            leading: Image.asset(project.imageUrl),
          );
        },
      ),
    );
  }
}
