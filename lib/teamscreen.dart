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
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[300], // Background color
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage(teamMember.imageUrl),
              ),
            ),
            SizedBox(height: 10.0),
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
            SizedBox(height: 5.0),
            Text(
              teamMember.expertise,
              style: TextStyle(
                fontSize: 16.0,
                color: const Color.fromARGB(255, 48, 48, 48),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              teamMember.experience,
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
    );
  }
}
