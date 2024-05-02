import 'package:flutter/material.dart';
import 'mobileapps.dart';

class MobileAppProjectsScreen extends StatelessWidget {
  const MobileAppProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile App Projects'),
      ),
      body: ListView.builder(
        itemCount: Mobileapps.projects.length,
        itemBuilder: (context, index) {
          final project = Mobileapps.projects[index];
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
