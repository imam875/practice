import 'package:flutter/material.dart';
import 'package:octobor23/Gellary.dart';
import 'package:octobor23/camera.dart';
import 'package:octobor23/home.dart';
import 'package:octobor23/profile.dart';
import 'package:octobor23/work.dart';

import 'seventh page.dart';

class tabs extends StatefulWidget {
  const tabs({Key? key}) : super(key: key);

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> with SingleTickerProviderStateMixin{


 late TabController _tabController;
   int Names =0;
  final  pages =[
    homes(),
    works(),
    profiles()
 ];

@override
  void initState() {
  _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('TabBar'),
        bottom: TabBar(
          labelColor: Colors.black54,
          indicatorColor: Colors.red,
          controller: _tabController,
          unselectedLabelColor: Colors.pink,
          unselectedLabelStyle: TextStyle(
            fontSize: 20,
          ),
          tabs: [

            Tab(
              icon: Icon(Icons.home),
              child: Text('home'),
            ),
            Tab(
              icon: Icon(Icons.work),
              child: Text('work'),
            ),
            Tab(
              icon: Icon(Icons.person),
              child: Text('profile'),
            ),
          ],
          onTap: (index){
            setState(() {
              Names = index;
              print(index);
            });
          },
        ),
      ),
      body: pages[Names],

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

