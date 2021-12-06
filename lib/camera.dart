import 'package:flutter/material.dart';

class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  @override
  _cameraState createState() => _cameraState();
}

class _cameraState extends State<camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Column(
        children: [
          Text('This is a Camera Page',style: TextStyle(
            fontSize: 24
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
