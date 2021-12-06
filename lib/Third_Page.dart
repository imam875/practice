import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octobor23/second%20page.dart';

import 'fourth_page.dart';
import 'main.dart';

class Hossen extends StatefulWidget {
  const Hossen({Key? key}) : super(key: key);

  @override
  _HossenState createState() => _HossenState();
}

class _HossenState extends State<Hossen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        leading: Icon(Icons.menu, size: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.search, size: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.assignment_turned_in_outlined, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Welcome To Third Page',
                style: TextStyle(fontSize: 25, color: Colors.deepPurple),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'ontrary to popular belief, Lorem Ipsum '
              'is not simply random text. It has roots i'
              'n a piece of classical Latin literature f'
              'rom 45 BC, making it over 2000 years old. '
              'Richard McClintock, a Latin professor at Ha'
              'mpden-Sydney College in Virginia, looked up'
              ' one of the more obscure Latin words, conse'
              'ctetur, from a Lorem Ipsum passage, and goi'
              'ng through the cites of the word in classic'
              'al literature, discovered the undoubtable s'
              'ource. Lorem Ipsum comes from sections 1.10'
              '.32 and 1.10.33 of "de Finibus Bonorum et M'
              'alorum" (The Extremes of Good and Evil) by '
              'Cicero, written in 45 BC. This book is a tr'
              'eatise on the theory of ethics, very popula'
              'r during the Renaissance. The first line of'
              ' Lorem Ipsum, "Lorem ipsum dolor sit amet..'
              '", comes from a line in section 1.10.32.',
              style: TextStyle(fontSize: 18, color: Colors.pink),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HM()),
              );
            },
            icon: Icon(
              Icons.arrow_forward_rounded,
              size: 30,
              color: Colors.cyanAccent,
            ),
            label: Text(
              'Next ',
              style: TextStyle(fontSize: 20, color: Colors.cyanAccent),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Imam()
                ),
              );
            },
            icon: Icon(Icons.arrow_back_outlined, color: Colors.red, size: 30),
            label: Text(
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
