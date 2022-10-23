

// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 22, 62, 130),
        title: Center(child: "Ask Me Anything".text.xl2.color(Colors.white).make()),
      ),
      body: const AskMeAnything(),
    ),
  ));
}

class AskMeAnything extends StatefulWidget {
  const AskMeAnything({super.key});

  @override
  State<AskMeAnything> createState() => _AskMeAnythingState();
}
  int num =3;
class _AskMeAnythingState extends State<AskMeAnything> {
  @override
  Widget build(BuildContext context) {
    return Center(
      
          child: Center(child: TextButton (
           onPressed:() {
            setState(() {
              num=Random().nextInt(5)+1;
            });
           },
            child: Expanded (
              child: SizedBox(
                height: 400,
                width: 400,
                child: Image(image: AssetImage('images/ball$num.png'))
              ),
            ),
          )),
          
        );
     
  }
}

