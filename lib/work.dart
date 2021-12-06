import 'package:flutter/material.dart';
import 'package:octobor23/seventh%20page.dart';

class works extends StatefulWidget {
  const works({Key? key}) : super(key: key);

  @override
  _worksState createState() => _worksState();
}

class _worksState extends State<works> {
  int value = 0;
  final first = TextEditingController();
  final second = TextEditingController();

  @override
  void dispose() {
    first.dispose();
    second.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: first,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('First Number'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: second,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Second Number'),
                  ),
                ),
              ),
              Text(
                'Result : $value',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Çalculator',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple)),
                  ),
                  onTap: () {
                    setState(
                      () {
                        if (int.parse(first.text) < int.parse(second.text)) {
                          value = (int.parse(first.text));
                        } else {
                          value = (int.parse(second.text));
                        };
                        print(value);
                       },
                    );
                  }
                ),
              RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => abc()));
                },
                child: Center(
                  child: Text(
                    'Back',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ],


        )

    );
  }
}
