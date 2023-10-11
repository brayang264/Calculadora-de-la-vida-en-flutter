import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Persona.dart';

class Joven extends Persona{
  int trabajoMT;
  int estudios;
  int recreacion;
  int gastosPareja;
  int subsidio;
  Joven({
    required int edad,
    required int ahorros,
    required int herencia,
    required int acumulado,
    required this.trabajoMT,
    required this.estudios,
    required this.recreacion,
    required this.gastosPareja,
    required this.subsidio
  }):super(edad,ahorros,herencia,acumulado);
  
}