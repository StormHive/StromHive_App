class Team {
  String name;
  String imageUrl;
  String position;
  String expertise;
  String experience;
  String skills;

  Team({
    required this.name,
    required this.imageUrl,
    required this.position,
    required this.expertise,
    required this.experience,
    required this.skills,
  });
  static List<Team> projects = [
    Team(
      name: 'Saad Ahmad',
      imageUrl: 'assets/SaadAhmad.jpeg',
      expertise: 'Software Engineer',
      position: 'CEO',
      experience:'More than 3 years',
      skills: 'Project Management, Strategic Logics, Solutions Architect, Mobile Application Development', 
    ),
    Team(
      name: 'Ali Abdullah',
      imageUrl: 'assets/Aliabdullah.jpeg',
      expertise: 'Software Engineer',
      position: 'CTO',
      experience:'More than 3 years',
      skills: 'Pyhton, Django, AWS, Website Development',
    ),
    Team(
      name: 'Muhammad Ahmad Aamir',
      imageUrl: 'assets/AhmadAamir.jpeg',
      expertise: 'Software Engineer',
      position: 'COO',
      experience:'More than 3 years',
      skills: 'Designing, Reactjs, Bootstrap, Frontend Development',
    ),
  ];

  static void addMember(Team member) {
    projects.add(member);
  }

  static void updateMember(int index, Team updatedMember) {
    projects[index] = updatedMember;
  }

  static void deleteMember(int index) {
    projects.removeAt(index);
  }
}
