import 'package:flutter/material.dart';
import 'package:octobor23/second%20page.dart';
import 'package:octobor23/seventh%20page.dart';

class mail extends StatefulWidget {
  const mail({Key? key}) : super(key: key);

  @override
  _mailState createState() => _mailState();
}

class _mailState extends State<mail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Mailing')
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Welcome to Flutter',
                style: TextStyle(fontSize: 25, color: Colors.lightBlue),
              ),
            ),
            Image.asset(
              'Assets/logo.png',
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter your Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Password'),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Imam()),
                );
              },
              icon: Icon(Icons.arrow_forward_rounded),
              label: Text(
                'Continue',
                style: TextStyle(fontSize: 25, color: Colors.lightBlue),
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => abc()));
              },
              child: Center(
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
          /* pages [turrentIndex],*/
        ),
      ),
    ); 
  }
}
