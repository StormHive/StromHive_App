import 'package:flutter/material.dart';
import 'package:stormhive/addmember.dart';
import 'package:stormhive/team.dart';

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  final List<Team> teamMembers = Team.projects;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: teamMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return TeamMemberCard(
            teamMember: teamMembers[index],
            onDelete: () {
              _deleteTeamMember(index);
            },
            onEdit: () {
              _navigateToEditScreen(context, teamMembers[index], index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTeamMemberScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addTeamMember(Team newMember) {
    setState(() {
      Team.addMember(newMember);
    });
  }

  void _deleteTeamMember(int index) {
    setState(() {
      Team.deleteMember(index);
    });
  }

  void _navigateToEditScreen(BuildContext context, Team teamMember, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditTeamMemberScreen(
          teamMember: teamMember,
          onUpdate: (updatedMember) {
            _updateTeamMember(index, updatedMember);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  void _updateTeamMember(int index, Team updatedMember) {
    setState(() {
      Team.updateMember(index, updatedMember);
    });
  }
}

class TeamMemberCard extends StatelessWidget {
  final Team teamMember;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const TeamMemberCard({
    Key? key,
    required this.teamMember,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: onEdit,
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: onDelete,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _navigateToEditScreen(BuildContext context, Team teamMember, int index) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => EditTeamMemberScreen(
        teamMember: teamMember,
        onUpdate: (updatedMember) {
         // _updateTeamMember(index, updatedMember);
          Navigator.pop(context);
        },
      ),
    ),
  );
}

class EditTeamMemberScreen extends StatelessWidget {
  final Team teamMember;
  final Function(Team) onUpdate;

  const EditTeamMemberScreen({
    Key? key,
    required this.teamMember,
    required this.onUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Implement UI for editing team member details using a form
    // When the form is submitted, call onUpdate with the updated team member
    throw UnimplementedError();
  }
}
