import 'package:flutter/material.dart';
import 'package:octobor23/fifth%20page.dart';
import 'package:octobor23/seventh%20page.dart';

class kalkini extends StatefulWidget {
  const kalkini({Key? key}) : super(key: key);

  @override
  _kalkiniState createState() => _kalkiniState();
}

class _kalkiniState extends State<kalkini> {
  int imam = 9;
  int hossen = 9;

  int addition(int a, int b) {
    return a + b;
  }

  int substraction(
    int a,
    int b,
  ) {
    return a - b;
  }

  int multiplication(
    int a,
    int b,
  ) {
    return a * b;
  }

  int division(
    int a,
    int b,
  ) {
    return a ~/ b;
  }

  @override
  final one = TextEditingController();
  final two = TextEditingController();

  void dispose() {
    one.dispose();
    two.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: one,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter your digit'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: two,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter your digit'),
              ),
            ),
            Text(
              'Result =$imam',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            RaisedButton(
              color: Colors.purple,
              onPressed: () {
                setState(
                  () {
                    imam = addition(int.parse(one.text), int.parse(two.text));
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Calculate',
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            Text(
              'Result =$hossen',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            RaisedButton(
              color: Colors.purple,
              onPressed: () {
                setState(
                  () {
                    hossen =
                        substraction(int.parse(one.text), int.parse(two.text));
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Calculate',
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
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
                  'Next',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => md()));
              },
              child: Center(
                child: Text(
                  'Back',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
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
