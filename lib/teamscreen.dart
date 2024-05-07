import 'package:flutter/material.dart';
import 'package:stormhive/team.dart';

class TeamScreen extends StatelessWidget {
  final List<Team> teamMembers = Team.projects;

  TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: teamMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return TeamMemberCard(teamMember: teamMembers[index]);
        },
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final Team teamMember;

  const TeamMemberCard({
    super.key,
    required this.teamMember,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.white], // Define your colors here
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(teamMember.imageUrl),
                  ),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          teamMember.name,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          teamMember.position,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: const Color.fromARGB(255, 48, 48, 48),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Expertise: ${teamMember.expertise}',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(255, 48, 48, 48),
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'Experience: ${teamMember.experience}',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(255, 48, 48, 48),
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'Skills: ${teamMember.skills}',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(255, 48, 48, 48),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
