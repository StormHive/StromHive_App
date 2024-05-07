import 'package:flutter/material.dart';

class ContactUsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: Color.fromARGB(255, 0, 157, 21),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                labelText: 'Name',
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                
                fillColor: Colors.white,
                labelText: 'Question/Problem',
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), ),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                labelText: 'Email',
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
