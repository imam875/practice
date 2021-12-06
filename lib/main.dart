import 'package:flutter/material.dart';
import 'package:octobor23/second%20page.dart';
import 'package:octobor23/settings.dart';
import 'package:octobor23/mail.dart';
import 'package:octobor23/seventh%20page.dart';

import 'fifth page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bangladesh '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    var turrentIndex=0;

    final pages= [
      mail(),
      mail(),
      setting(),
    ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: pages[turrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.deepPurpleAccent,

        backgroundColor: Colors.transparent,
        iconSize: 32,
        unselectedFontSize: 18,
        selectedFontSize: 20,
        type: BottomNavigationBarType.fixed,
        currentIndex: turrentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.mail,color: Colors.purple), label: 'Mail'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.purple), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.purple), label: 'Settings'),
        ],
        onTap: (undex){
        setState(() {
          turrentIndex=undex;
        });
        },
      ),
    );
  }
}
