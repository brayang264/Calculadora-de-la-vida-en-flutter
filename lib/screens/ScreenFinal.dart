// ignore: file_names
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Adult.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Joven.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/OldAdult.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/child.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/create.dart';
import 'package:calculadora_de_la_vida/screens/mainScreen.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class ScreenFinal extends StatelessWidget{
  Create create = Create.getInstance();
  Child? child;
  Joven ? joven;
  Adult ? adult;
  int ? edad;
  OldAdult ? oldAdult;
  String texto ="";
  String textChild ="";
  String textJoven ="";
  String textAdult ="";
  String textOldAdult ="";
  String total="";

  ScreenFinal({super.key});
  void obtenerVariables(){
    child = create.child;
    joven = create.young;
    adult = create.adult;
    oldAdult = create.oldAdult;
    edad = create.edad;
    texto = "A tus $edad años tienes el siguiente dinero: ";
    int acumulado = create.acumuladoChid;
    textChild = "En su etapa de niñez tiene un saldo de: $acumulado";
    acumulado = create.acumuladoJoven;
    textJoven = "En su etapa de juventud tiene un saldo de: $acumulado";
    acumulado = create.acumuladoAdult;
    textAdult =  "En su etapa de adultez tiene un saldo de: $acumulado";
    acumulado = create.acumuladoOldAdult;
    textOldAdult =  "En su etapa de vejez tiene un saldo de: $acumulado";
    acumulado = create.acumuladoTotal;
    total = "En todas sus etapas obtuvo un saldo de: $acumulado";
  }
  @override
  Widget build(BuildContext context) {
    obtenerVariables();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultados"),
        backgroundColor: const Color.fromARGB(251, 104, 208, 252),
      ),
      body:  SingleChildScrollView(
        child:  Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Text(texto,
              style: const TextStyle(
                fontSize: 25.0,
                fontFamily: "Century Gothic",
                color: Colors.black)),
              const SizedBox(height: 50),
              Text(textChild,
              style: const TextStyle(
                fontSize: 25.0,
                fontFamily: "Century Gothic",
                color: Colors.black)
              ),
              const SizedBox(height: 50),
              Text(textJoven,
              style: const TextStyle(
                fontSize: 25.0,
                fontFamily: "Century Gothic",
                color: Colors.black)
              ),
              const SizedBox(height: 50),
              Text(textAdult,
              style: const TextStyle(
                fontSize: 25.0,
                fontFamily: "Century Gothic",
                color: Colors.black)
              ),
              const SizedBox(height: 50),
              Text(textOldAdult,
              style: const TextStyle(
                fontSize: 25.0,
                fontFamily: "Century Gothic",
                color: Colors.black)
              ),
              const SizedBox(height: 50),
              Text(total,
              style: const TextStyle(
                fontSize: 25.0,
                fontFamily: "Century Gothic",
                color: Colors.black)
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: (){
                  volverAlInicio(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50)
                ),
                child: const Text("Volver al incio"),
              )
            ],
          ),
        ),
      ),
    );
  }
  void volverAlInicio(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
  }
}