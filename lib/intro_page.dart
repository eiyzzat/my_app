import 'package:flutter/material.dart';
import 'package:my_app/home2.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //logo
      Padding(padding: const EdgeInsets.only(top: 80),
      child: Image.asset('lib/images/q.png',
      height: 300,),
      ),

        //text
        const Padding(
            padding: const EdgeInsets.all(80.0),
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            )),

            Center(
              child: ElevatedButton(
                child:const Text('Get Started'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHome2Page(title: 'title',)));
                },),
            )

            

        
      ]),
    );
  }
}
