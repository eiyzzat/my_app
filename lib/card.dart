

import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  const Card({super.key});

  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {

  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: Padding(
        padding:const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            TextField(
              decoration: InputDecoration(
                hintText: "what's on your mind",
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
        ),
      
      
    );
  }

  



}