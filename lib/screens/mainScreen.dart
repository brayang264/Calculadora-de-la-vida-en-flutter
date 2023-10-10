import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de la vida"),
        backgroundColor: const Color.fromARGB(251, 104, 208, 252),
      ),
      body: Container(
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(alignment: Alignment.center),
              const Text("Necesitamos algunas datos sobre ti",
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: "Century Gothic",
                color: Colors.grey
              ),),
              const SizedBox(height: 100),
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  labelText: 'Ingresa tu edad para comenzar',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: (){
                  openScreen(_textController.text,context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 70)
                ),
                child: const Text("Comencemos"),
                
              ),
            ],
          ),
        ),
        ),
    );
  }
  
  void openScreen(String age, BuildContext context){
    if(!isNumber(age)){
      showAlert(context);
    }else{
      int screen = calculateScree(int.parse(age));
    }

  }
  int calculateScree(int age){
    if(age<=14){
      return 1;
    }else if(age <=24){
      return 2;
    }else if(age <=60){
      return 3;
    }else{
      return 4;
    }
  }
  bool isNumber(String text){
    return (int.tryParse(text)!=null)?true:false;
  }
  void showAlert(BuildContext context){
    showDialog(
        context:context,
        builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Error"),
            content:const Text("Para ingresar su edad solo debe de ingresar valores númericos"),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text("Cerrar"),
              )
            ],
          );
        }
      );
  }
  }
