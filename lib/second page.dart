import 'package:flutter/material.dart';

import 'Third_Page.dart';
import 'main.dart';

class Imam extends StatefulWidget {
  const Imam({Key? key}) : super(key: key);

  @override
  _ImamState createState() => _ImamState();
}

class _ImamState extends State<Imam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Welcome To Second Page',
                style: TextStyle(fontSize: 25, color: Colors.deepPurple),
              ),
            ),
          ),
          Image.network(
              'https://www.pngitem.com/pimgs/m/115-1152464_flutter-fortnite-flutter-skin-hd-png-download.png',
              height: 200,
              width: 200),
          Text(
            'We are from Bangladesh',
            style: TextStyle(fontSize: 24, color: Colors.pink),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Hossen()),
              );
            },
            child: Text(
              'Next',
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Text(
              'Back',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(fixedColor: Colors.deepPurpleAccent,
        unselectedItemColor:Colors.red ,backgroundColor: Colors.transparent,
        iconSize: 32,unselectedFontSize: 18,selectedFontSize: 20,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.mail,color: Colors.blue,), label: 'Mail'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.purple), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black), label: 'Settings'),
        ],
      ),
    );
  }
}
