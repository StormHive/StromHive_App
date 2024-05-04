import 'package:flutter/material.dart';
import 'package:stormhive/contactus.dart';

class CompanyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/stormhive_logo.png',
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
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'At StormHive, we are a leading software solution company dedicated to providing innovative digital solutions tailored to meet the unique needs of our clients. Specializing in online solutions, web applications, automation tools, and mobile applications, we empower businesses to thrive in the digital age.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Our Mission:',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'To deliver cutting-edge software solutions that drive innovation, streamline processes, and exceed our clients\' expectations.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Our Vision:',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'To be the preferred partner for businesses seeking digital transformation through exceptional software solutions.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            ContactUsCard(),
            SizedBox(height: 20.0),
            ListTile(
              leading: Icon(Icons.ac_unit_sharp),
              title: Text('Website'),
              subtitle: Text('StormHive.com'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Location'),
              subtitle: Text('Lahore, Pakistan'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact'),
              subtitle: Text('+92 308-8677122'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('saadrashid334@gmail.com'),
            ),
            Divider(),
            // Add more information as needed
          ],
        ),
      ),
    );
  }
}
