class Team {
  String name;
  String imageUrl;
  String position;
  String expertise;
  String experience;
  String skills;

  Team(
    this.name,
    this.imageUrl,
    this.position,
    this.expertise,
    this.experience,
    this.skills,
  );
  static List<Team> projects = [
    Team(
      'Saad Ahmad',
      'assets/SaadAhmad.jpeg',
      'Software Engineer',
      'CEO',
      'More than 3 years',
      'Project Management, Strategic Logics, Solutions Architect, Mobile Application Development',
    ),
    Team(
      'Ali Abdullah',
      'assets/Aliabdullah.jpeg',
      'Software Engineer',
      'CTO',
      'More than 3 years',
      'Pyhton, Django, AWS, Website Development',
    ),
    Team(
      'Muhammad Ahmad Aamir',
      'assets/AhmadAamir.jpeg',
      'Software Engineer',
      'COO',
      'More than 3 years',
      'Designing, Reactjs, Bootstrap, Frontend Development',
    ),
  ];
}
