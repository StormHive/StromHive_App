import 'package:flutter/material.dart';
import 'package:stormhive/automation_tool_screen.dart';
import 'package:stormhive/mobile_app_screen.dart';
import 'package:stormhive/websites_screen.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF05522B), // Set background color here

        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProjectCard(
                  title: 'Web Applications',
                  imageAsset: 'assets/Webdevelopment.jpg',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WebsiteProjectsScreen()),
                    );
                  },
                ),
                SizedBox(height: 25),
                ProjectCard(
                  title: 'Automation Tools',
                  imageAsset: 'assets/Automation.jpg',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AutomationProjectsScreen()),
                    );
                  },
                ),
                SizedBox(height: 25),
                ProjectCard(
                  title: 'Mobile Applications',
                  imageAsset: 'assets/Appdevelopment.png',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MobileAppProjectsScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add Category'),
                content: TextField(
                  decoration: InputDecoration(hintText: 'Enter category name'),
                  onChanged: (value) {
                    // Handle changes in the text field
                  },
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Implement functionality to add the new category
                      // You can use the entered category name stored in the text field
                      Navigator.pop(context);
                    },
                    child: Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue, // Set the FAB background color
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String imageAsset;
  final VoidCallback onPressed;

  const ProjectCard(
      {Key? key,
      required this.title,
      required this.imageAsset,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.8;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: cardWidth,
        constraints: const BoxConstraints.expand(
          height: 300,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 61, 61, 61).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          image: DecorationImage(
            image: AssetImage(imageAsset),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
