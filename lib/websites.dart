class Websites {
  String title;
  String imageUrl;
  String description;

  Websites(
    this.title,
    this.imageUrl,
    this.description,
  );
  static List<Websites> projects = [
    Websites(
      'Full-stack Website development: Food Delivery Website',
      'assets/cangurhu.png',
      'The client wanted to create a dynamic website that would improve their experience, satisfaction, and ease of admin use. Their main objective was to have a natural interface that would streamline order placement, management, user management, and payment processing, making all administrative commands easier for them. As the lead website developer, I designed, architected, and implemented the backend infrastructure using Python.',
    ),
    Websites(
      'Video Purchase Portal: Full-stack Website Development',
      'assets/vod.jpg',
      'The client wanted to create a video-on-demand platform where customers could buy video links to access exclusive contentThe client wanted to create a video-on-demand platform where customers could buy video links to access exclusive content. They required a reliable solution that would make it easier for users to browse and buy content while also streamlining the uploading of videos and handling of transactions. I suggested creating a feature-rich website that would incorporate front-end and back-end features.This would enable users to browse and buy with ease while also enabling effective management of video uploads and transactions. Enhancing user satisfaction and increasing engagement would require the implementation of a secure payment gateway and user-friendly navigation (I used Stripe integration per clients demand). The project resulted in the successful launch of a fully functional video-on-demand platform that met the clients requirements. Users can now easily purchase access to videos uploaded by the admin, with thumbnails providing a preview of the content. The intuitive interface and streamlined transaction process have contributed to high user satisfaction and increased engagement on the platform.',
    ),
    Websites('ExcelCompare', 'assets/exlcomp.jpeg',
        'Introducing the Excel File Comparison Tool – your one-stop solution for comparing multiple Excel files with ease. Whether you are a data analyst, financial professional, or student, this website empowers you to quickly and accurately compare data from various sources. Upload multiple Excel files, specify comparison criteria, and let the tool do the rest. Our advanced algorithms analyze the data, highlight differences, and generate a comprehensive report for you to review. With intuitive filtering and sorting options, you can easily identify discrepancies and make informed decisions. Once satisfied, download the results in your preferred format for further analysis or sharing. Say goodbye to manual data comparison and hello to streamlined efficiency with the Excel File Comparison Tool.'),
  ];
}
