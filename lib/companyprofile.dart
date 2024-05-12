import 'package:flutter/material.dart';
import 'package:stormhive/contactus.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyProfile extends StatelessWidget {
  CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 111, 48, 148),
            Color.fromARGB(255, 49, 27, 87),
          ],
          stops: [0.1, 1],
          begin: Alignment(0.0, -1.1),
          end: Alignment(0.0, 1.4),
        )),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/stormhive.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    Text(
                      'Welcome to StormHive - Your Partner in Digital Transformation!',
                      style: GoogleFonts.freehand(
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'At StormHive, we are a leading software solution company dedicated to providing innovative digital solutions tailored to meet the unique needs of our clients. Specializing in online solutions, web applications, automation tools, and mobile applications, we empower businesses to thrive in the digital age.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Our Mission:',
                      style: GoogleFonts.freehand(
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'To deliver cutting-edge software solutions that drive innovation, streamline processes, and exceed our clients\' expectations.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Our Services:',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: _buildServiceTile(context, Icons.help,
                                    iconColor:
                                        const Color.fromARGB(255, 255, 230, 0),
                                    title: 'Problem Solving'),
                              ),
                              Expanded(
                                child: _buildServiceTile(context, Icons.web,
                                    iconColor: Color.fromARGB(255, 255, 100, 4),
                                    title: 'Website Development'),
                              ),
                              Expanded(
                                child: _buildServiceTile(
                                    context, Icons.mobile_screen_share,
                                    iconColor: Color.fromARGB(255, 254, 2, 2),
                                    title: 'Application Development'),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildServiceTile(context, Icons.cloud_upload,
                                  iconColor: Color.fromARGB(255, 59, 235, 255),
                                  title: 'Deployment'),
                              _buildServiceTile(context, Icons.cloud,
                                  iconColor: Colors.blueAccent.shade700,
                                  title: 'AWS Services'),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildServiceTile(context, Icons.settings,
                                  iconColor: Color.fromARGB(255, 90, 108, 117),
                                  title: 'Automation Tools Creation'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Our Vision:',
                      style: GoogleFonts.freehand(
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'To be the preferred partner for businesses seeking digital transformation through exceptional software solutions.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ContactUsCard(),
              SizedBox(height: 20.0),
              ListTile(
                leading: Icon(Icons.ac_unit_sharp, color: Colors.amber,),
                title: Text(
                  'Website',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                subtitle: Text(
                  'StormHive.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.white,),
                title: Text(
                  'Location',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Lahore, Pakistan',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white,),
                title: Text(
                  'Contact',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                subtitle: Text(
                  '+92 308-8677122',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.email, color: Colors.white,),
                title: Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                subtitle: Text(
                  'saadrashid334@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildServiceTile(BuildContext context, IconData iconData,
    {Color? iconColor, required String title}) {
  double iconSize = MediaQuery.of(context).size.width * 0.1;
  double fontSize = MediaQuery.of(context).size.width * 0.03;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: 5.0),
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
