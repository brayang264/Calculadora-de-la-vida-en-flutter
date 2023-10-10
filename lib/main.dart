import 'package:calculadora_de_la_vida/screens/mainScreen.dart';
import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "No se que va a ca",
      home: MainScreen(),
    );
  }
}
