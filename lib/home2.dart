import 'package:flutter/material.dart';
import 'package:my_app/list.dart';
import 'package:my_app/profile.dart';
import 'package:my_app/slide.dart';


class MyHome2Page extends StatefulWidget {
  const MyHome2Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHome2Page> createState() => _MyHome2PageState();
}

class _MyHome2PageState extends State<MyHome2Page> {
  int myIndex = 0;

  List<Widget> widgetList = const [
    ListViewTest(),
    Slide(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('MyApp'),
      //),
      drawer: Drawer(
        child: Container(
          color: Colors.yellow[200],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                child: Text(
                  'L O G O',
                  style: TextStyle(fontSize: 35),
                )),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('home'),
                ),
            ],
          ),
        ),
      ),
      body: Center(child: widgetList[myIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home),
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              label: 'Gallery',
              icon: Icon(Icons.image),
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              label: 'profile',
              icon: Icon(Icons.person),
              backgroundColor: Colors.yellow),
        ],
      ),
    );
  }
}


