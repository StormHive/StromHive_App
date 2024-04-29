import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:stormhive/firstpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff757f9a), Color(0xffd7dde8)],
          stops: [0.18, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FadeInUp(
                      duration: Duration(milliseconds: 1000),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                        child: Stack(
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                              ),
                            ),
                            Text(
                              "Welcome",
                              style: TextStyle(
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                            Text(
                              "Welcome",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeInUp(
                      duration: Duration(milliseconds: 1200),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                        child: Stack(
                          children: [
                            Text(
                              "To StormHive",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.bold,
                                fontSize: 25.5,
                              ),
                            ),
                            Text(
                              "To StormHive",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 25.5,
                              ),
                            ),
                            Text(
                              "To StormHive",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 203, 203, 203),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.all(20.0),
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1400),
                        child: Stack(
                          children: [
                            Text(
                              "Your Trusted Partner for Software Solutions, Websites, Mobile Applications, and Automation Solutions",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.7), // Shadow color
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Your Trusted Partner for Software Solutions, Websites, Mobile Applications, and Automation Solutions",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(
                                    255, 255, 255, 255), // Text color
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                FadeInUp(
                    duration: Duration(milliseconds: 1400),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Stack(
                        children: [
                          // Image with shadow
                          ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.black
                                  .withOpacity(0.5), // Shadow color and opacity
                              BlendMode
                                  .srcATop, // Apply the shadow only to the non-transparent parts of the image
                            ),
                            child: Image.asset(
                              'assets/stormhive_icon.png',
                              fit: BoxFit.contain, // Adjust the fit as needed
                            ),
                          ),
                          // Image without shadow
                          Image.asset(
                            'assets/stormhive_icon.png',
                            fit: BoxFit.contain, // Adjust the fit as needed
                          ),
                        ],
                      ),
                    )),
                Column(
                  children: <Widget>[
                    FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const FirstPage()));
                            },
                            color: Color.fromARGB(255, 240, 240, 240),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Tap here for Excellence",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
