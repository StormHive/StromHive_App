class Automationtools {
  String title;
  String imageUrl;
  String description;

  Automationtools(
    this.title,
    this.imageUrl,
    this.description,
  );
  static List<Automationtools> projects = [
    Automationtools(
        'AI Powered Advanced Property Analysis Website Tool in Python',
        'assets/birdog.png',
        'Introducing Birdog: Your Ultimate Real Estate Automation Tool. Birdog streamlines the property search process by consolidating listings from various sources into one centralized platform. Users can search for multiple properties simultaneously, saving valuable time and energy. Powered by the Redfin API, Birdog provides users with access to up-to-date property data, including listing details, pricing information, neighborhood insights, and more. This wealth of information empowers users to make informed decisions and navigate the real estate market with confidence. Birdog\'s intuitive interface makes it easy for users of all experience levels to navigate through search results, filter options, and property details. By handling the heavy lifting of property searching and data compilation, Birdog serves as a personal real estate assistant, allowing users to focus on finding the perfect property. Join the revolution today!'),
    Automationtools('Indeed Automation Tool', 'assets/indeed.png',
        'Say goodbye to tedious searches and hello to JobFetch – the ultimate automation tool for Indeed job hunting. JobFetch streamlines job searches by automating the retrieval of all searched jobs, saving time and effort. Powered by web scraping technology, it extracts detailed information from each listing, including title, company, location, salary, and description. With customizable search parameters, real-time updates, and a user-friendly interface, JobFetch serves as your personal job search assistant. Join the revolution today!'),
    Automationtools(
      'Handle Register Portal Automation',
      'assets/handelsregister.jpg',
      'We created an Automation Tool for a client that gets data from a complex german government public website and stores it in the required format of the user.',
    ),
  ];
}
