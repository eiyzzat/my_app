import 'package:flutter/material.dart';
import 'package:my_app/calendar.dart';
import 'package:my_app/profile.dart';
import 'package:my_app/slide.dart';
import 'package:url_launcher/url_launcher.dart';

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  _launchurl() async {
    const url = 'https://youtube.com/';
    if(await canLaunchUrl(Uri.parse(url))){
      await launchUrl(Uri.parse(url));
    }
    else{
      throw "could not launch";

    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      
      body: ListView(
        physics: const BouncingScrollPhysics(),
       padding: const EdgeInsets.only(top: 20),

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              height: 200, color: Colors.yellow[200],
              child: 
              IconButton(
                iconSize: 60.0,
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Calendar()));
                },
                icon: Icon(Icons.calendar_month),
                
              ) ,
              
              ),
              
            
            
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200, color: Colors.yellow[200],
              child: 
              IconButton(
                iconSize: 60.0,
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Slide()));
                },
                icon: Icon(Icons.image),
              ) ,
              
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200, color: Colors.yellow[200],
              child: 
              IconButton(
                iconSize: 60.0,
                color: Colors.black,
                onPressed: () {
                  _launchurl();
                },
                icon: Icon(Icons.search),
              ) ,
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200, color: Colors.yellow[200],
              child: 
              IconButton(
                iconSize: 60.0,
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                },
                icon: Icon(Icons.person),
              ) ,
              ),
          ),
          
        ],
      ),
      
    );
  }
}