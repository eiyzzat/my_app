

import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

import 'home.dart';

class Splash extends StatefulWidget {
    const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
    void initState(){
        super.initState();
        _navigatetohome();
    }

    _navigatetohome()async{
        await Future.delayed(Duration(milliseconds: 1500),(){});
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'test')));
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container( 
                        height: 100, 
                        width: 100, 
                        color: Colors.white,),
                    Container(
                        // ignore: prefer_const_constructors
                        child: Text(
                            'Hello World',
                            style: const TextStyle(fontSize:24, fontWeight:FontWeight.bold)
                        ),
                    ),
                  ],
                ),
            ),
        );
    }
}