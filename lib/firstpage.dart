import 'package:flutter/material.dart';
import 'package:stormhive/automation_tool_screen.dart';
import 'package:stormhive/companyprofile.dart';
import 'package:stormhive/contactus.dart';
import 'package:stormhive/mobile_app_screen.dart';
import 'package:stormhive/projects.dart';
import 'package:stormhive/rating.dart';
import 'package:stormhive/seacrh.dart';
import 'package:stormhive/teamscreen.dart';
import 'package:stormhive/websites_screen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'StormHive',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 112, 49, 149),
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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: AppSearchDelegate(),
              ).then((value) {
                _handleSearchResult(context, value!);
              });
            },
          ),
        ],
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
              title: const Text('Services We Provide'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: SingleChildScrollView(
                          child: ContactUsCard(),
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              title: const Text('Rate Our App'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Rate Us'),
                      content: Rating(
                        initialRating: 0,
                        size: 20.0,
                        onRated: (int value) {},
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: const MainScreen(),
    );
  }

  void _handleSearchResult(BuildContext context, String result) {
    if (result == 'website') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WebsiteProjectsScreen()),
      );
    } else if (result == 'mobile') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MobileAppProjectsScreen()),
      );
    } else if (result == 'automation') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AutomationProjectsScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No result found'),
          duration: Duration(seconds: 2),
        ),
      );
    }
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
        backgroundColor: Color.fromARGB(255, 99, 43, 132),
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
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.black45),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
