import 'package:flutter/material.dart';
import 'package:octobor23/main.dart';
import 'package:octobor23/sixth%20page.dart';

import 'Gellary.dart';
import 'camera.dart';
import 'tab bar.dart';

class abc extends StatefulWidget {
  const abc({Key? key}) : super(key: key);

  @override
  _abcState createState() => _abcState();
}

class _abcState extends State<abc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Page'),
      ),
      body: Column(
        children: [
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => kalkini()));
            },
            child: Center(
              child: Text(
                'Back',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          TextButton(
            /*color: Colors.blue,*/
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tabs()));
            },
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(fontSize: 24, color: Colors.red),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('ImamHossen'),
              accountEmail: Text('Imamhossen983@gmail.com'),
              currentAccountPicture: Image.network(
                  'https://www.adobe.com/express/create/media_11'
                  '4db2401080d263d7338e6fab6589ca67f85274c.jpeg?width=2000&format=webply&optimize=medium'),
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera'),
              trailing: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAHXPluq6GtTRPDIHRv5kJPy86uFjp5sO7hg&usqp=CAU'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => camera()));
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Gellary'),
              trailing: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAHXPluq6GtTRPDIHRv5kJPy86uFjp5sO7hg&usqp=CAU'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => gellary()));
              },
            ),
            ListTile(
              leading: Image.network(
                  'https://codesign.com.bd/conversations/content/images/2020/03/Sprint-logo-design-Codesign-agency.png'),
              title: Text('Camera'),
              trailing: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAHXPluq6GtTRPDIHRv5kJPy86uFjp5sO7hg&usqp=CAU'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => camera()));
              },
            ),
            ListTile(
              leading: Image.network(
                  'https://codesign.com.bd/conversations/content/images/2020/03/Sprint-logo-design-Codesign-agency.png'),
              title: Text('Camera'),
              trailing: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAHXPluq6GtTRPDIHRv5kJPy86uFjp5sO7hg&usqp=CAU'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => camera()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.red,
        backgroundColor: Colors.transparent,
        iconSize: 32,
        unselectedFontSize: 18,
        selectedFontSize: 20,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
                color: Colors.blue,
              ),
              label: 'Mail'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.purple), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black),
              label: 'Settings'),
        ],
      ),
    );
  }
}
