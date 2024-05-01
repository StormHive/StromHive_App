class Mobileapps {
  String title;
  String imageUrl;
  String description;

  Mobileapps(
    this.title,
    this.imageUrl,
    this.description,
  );
  static List<Mobileapps> projects = [
    Mobileapps('ChatPal: Innovative Learning', 'assets/chatpal.png',
        'Introducing ChatPal: Innovative Learning, the interactive Android application that brings Pakistan\'s historic heroes to life! Designed for kids, this educational app allows users to engage in conversations with virtual representations of Pakistan\'s legendary figures. Through AI technology, kids can ask questions, listen to stories, and hear the voices of iconic personalities from Pakistan\'s history. Whether it\'s Quaid-e-Azam Muhammad Ali Jinnah, Allama Iqbal, or other influential figures, ChatPal offers a unique and immersive learning experience. Spark curiosity, foster creativity, and inspire a love for learning with ChatPal: Innovative Learning.'),
  ];
}
