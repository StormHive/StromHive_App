import 'package:flutter/material.dart';
import 'automationtools.dart';

class AutomationProjectsScreen extends StatelessWidget {
  const AutomationProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Automation Projects'),
      ),
      body: ListView.builder(
        itemCount: Automationtools.projects.length,
        itemBuilder: (context, index) {
          final project = Automationtools.projects[index];
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
