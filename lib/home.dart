import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:stormhive/firstpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeInUp(
                        duration: Duration(milliseconds: 1200),
                        child: Text(
                          "To StormHive",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 203, 203, 203),
                              fontSize: 25),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.all(20.0),
                      child: FadeInUp(
                          duration: Duration(milliseconds: 1400),
                          child: Text(
                            "Your Trusted Partner for Software Solutions, Websites, Mobile Applications, and Automation Solutions",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15),
                          )),
                    )
                  ],
                ),
                FadeInUp(
                    duration: Duration(milliseconds: 1400),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/stormhive_icon.png'))),
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
