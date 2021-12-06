import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octobor23/second%20page.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Setting'),
      ),
      body:SingleChildScrollView(
        child: Column(
        children: [
          Text('Welcome to Setting Page',style: TextStyle(
            fontSize: 22
          ),),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                    hintText: "Enter your name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                    hintText: "Enter your email"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                    hintText: "Enter your pin"
              ),
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

        ],
      ),
    ),
    );
  }
}
