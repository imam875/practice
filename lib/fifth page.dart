import 'package:flutter/material.dart';
import 'package:octobor23/sixth%20page.dart';

import 'fourth_page.dart';

class md extends StatefulWidget {
  const md({Key? key}) : super(key: key);

  @override
  _mdState createState() => _mdState();
}

class _mdState extends State<md> {
  bool abc = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: abc == false ? Colors.purple : Colors.red,
      appBar: AppBar(
        title: Text('AllButton'),
      ),
      body: Column(
        children: [

          Switch(
            value: abc,
            onChanged: (imam) {
              setState(() {
                abc = imam;
                print(imam);
              });
            },

          ),


          FlatButton(
            onPressed: () {

            },
            child: Text('FlatButton',
              style: TextStyle(fontSize: 24, color: Colors.purple),
            ),
          ),

          RaisedButton(
            onPressed: () {
              Text('RaisedButton',
                style: TextStyle(fontSize: 24, color: Colors.black),);
            },
          ),


          TextButton.icon(
            onPressed: () {

            },
            icon: Icon(
                Icons.assignment_turned_in
            ),
            label: Text('TextButtonIcon',
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),),


          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => kalkini()
                  ),
              );
            },
            child: Text('TextButton',
              style: TextStyle(fontSize: 24, color: Colors.green),),
          ),

          RaisedButton(color: Colors.blue,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HM()
                  )
              );
            },
            child: Center(child: Text('Back',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor:Colors.black ,backgroundColor: Colors.white30,
        iconSize: 32,unselectedFontSize: 18,selectedFontSize: 20,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.mail,color: Colors.cyanAccent,), label: 'Mail'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.lightGreen), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black), label: 'Settings'),
        ],
      ),
    );
  }
}
