import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'logeo',
      home: inicio(),
    );
  }
}

class inicio extends StatelessWidget {
  const inicio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: cuerpo(),
    );
  }

Widget cuerpo() {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("http://1.bp.blogspot.com/-5uWhi3fZXWs/ViPt1bVPkeI/AAAAAAAAAKY/WCR8gkzEwg0/s1600/G5025-Flora-Fauna-A.jpg"),fit: BoxFit.cover)),
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      etiqueta(),
      campoUsers(),
      campoPass(),
      botonEntrar(),
      
    ],
    ),   
    );
  }

Widget etiqueta(){
  return Container(
    child: Center(
      child: Text('sing in', 
      style: TextStyle(fontSize: 25.0,color: Colors.white),
      ),
    ),
  );
}

Widget campoUsers(){
  return Container(
       padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: TextField(decoration: InputDecoration(hintText: "user",fillColor: Colors.white,filled: true)),
  );
}

Widget campoPass(){
  return Container(
   padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: TextField(decoration: InputDecoration(hintText: "password",fillColor: Colors.white,filled: true)),
  );
}
Widget botonEntrar(){
    return ElevatedButton(onPressed: () {} , 
    child: Text("entrar"),
    );
    }
}