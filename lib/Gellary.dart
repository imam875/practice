import 'package:flutter/material.dart';

class gellary extends StatefulWidget {
  const gellary({Key? key}) : super(key: key);

  @override
  _gellaryState createState() => _gellaryState();
}

class _gellaryState extends State<gellary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.purple,
        title: Text('Gellary'),
      ),
      bottomNavigationBar: BottomNavigationBar(iconSize: 36,unselectedItemColor: Colors.black,
        unselectedFontSize: 18,selectedFontSize: 19,selectedItemColor: Colors.black54,backgroundColor: Colors.transparent,

        items: [

          BottomNavigationBarItem(icon: Icon(Icons.message,color: Colors.pinkAccent),label: "Messege",),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.pinkAccent,), label: 'profile',),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.pinkAccent), label: 'Notifications'),
        ],
      ),
    );
  }
}
