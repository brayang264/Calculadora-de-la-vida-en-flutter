import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Persona.dart';

class Joven extends Persona{
  int trabajoMT;
  int estudios;
  int recreacion;
  int gastosPareja;
  int subsidio;
  // Constructor
  Joven.n(this.trabajoMT, this.estudios, this.recreacion, this.gastosPareja, this.subsidio) : super(0, 0, 0, 0);
  // getters and setters
  int get getTrabajoMT => trabajoMT;
  set setTrabajoMT(int trabajoMT) => this.trabajoMT = trabajoMT;
  int get getEstudios => estudios;
  set setEstudios(int estudios) => this.estudios = estudios;
  int get getRecreacion => recreacion;
  set setRecreacion(int recreacion) => this.recreacion = recreacion;
  int get getGastosPareja => gastosPareja;
  set setGastosPareja(int gastosPareja) => this.gastosPareja = gastosPareja;
  int get getSubsidio => subsidio;
  set setSubsidio(int subsidio) => this.subsidio = subsidio;
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