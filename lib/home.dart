import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:stormhive/firstpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FadeInUp(
                      duration: const Duration(milliseconds: 1000),
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
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
                            const Text(
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
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
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
                                  ..color = const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 25.5,
                              ),
                            ),
                            const Text(
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
                      margin: const EdgeInsets.only(top: 20.0),
                      padding: const EdgeInsets.all(20.0),
                      child: FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: Stack(
                          children: [
                            Text(
                              "Your Trusted Partner for Software Solutions, Websites, Mobile Applications, and Automation Solutions",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.7),
                                fontSize: 15,
                              ),
                            ),
                            const Text(
                              "Your Trusted Partner for Software Solutions, Websites, Mobile Applications, and Automation Solutions",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(
                                    255, 255, 255, 255),
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
                    duration: const Duration(milliseconds: 1400),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Stack(
                        children: [
                          ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.black
                                  .withOpacity(0.5), 
                              BlendMode
                                  .srcATop, // Apply the shadow only to the non-transparent parts of the image
                            ),
                            child: Image.asset(
                              'assets/stormhive_logo.png',
                              fit: BoxFit.contain, // Adjust the fit as needed
                            ),
                          ),
                          // Image without shadow
                          Image.asset(
                            'assets/stormhive_logo.png',
                            fit: BoxFit.contain, // Adjust the fit as needed
                          ),
                        ],
                      ),
                    )),
                Column(
                  children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Container(
                          padding: const EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: const Border(
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
                            color: const Color.fromARGB(255, 240, 240, 240),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: const Text(
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
