import 'package:flutter/material.dart';
import 'package:stormhive/companyprofile.dart';
import 'package:stormhive/projects.dart';
import 'package:stormhive/teamscreen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StormHive'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('StormHive'),
              accountEmail: Text('saadrashid334@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/stormhive_icon.png'),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Add your onTap logic here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Add your onTap logic here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                // Add your onTap logic here
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    CompanyProfile(),
    const ProjectsScreen(),
    TeamScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
