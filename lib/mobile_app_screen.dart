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
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff757f9a), Color(0xffd7dde8)],
          stops: [0.18, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child:SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Mobileapps.projects.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                final project = Mobileapps.projects[index];
                return ListTile(
                  title: Text(
                    project.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(project.description),
                  ),
                  leading: Image.asset(
                    project.imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      ),
    );
  }
}
