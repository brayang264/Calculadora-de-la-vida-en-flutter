import 'package:flutter/material.dart';

class mainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de la vida"),
        backgroundColor: Color.fromARGB(251, 104, 208, 252),
      ),
      body: Container(
        color: Color.fromARGB(255, 67, 92, 255),
        child: Column(
          children: <Widget>[
            ElevatedButton(
          onPressed: (){

          },
          child: Text("Empezar"),
        ),
        ElevatedButton(
          onPressed: (){

          },
          child: Text("Este es otro botón")
          ,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "Ingresa tu edad",
            border: OutlineInputBorder(),
          ),
        )
          ],
        )
        ),
    );
  }
  }
