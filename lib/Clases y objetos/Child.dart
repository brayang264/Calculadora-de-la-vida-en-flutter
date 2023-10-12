import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Persona.dart';

class Child extends Persona{
  int mensualidad;
  int mandados;
  // Constructor
  Child.n(this.mensualidad, this.mandados) : super(0, 0, 0, 0);
  // getters and setters
  int get getMensualidad => mensualidad;
  set setMensualidad(int mensualidad) => this.mensualidad = mensualidad;
  int get getMandados => mandados;
  set setMandados(int mandados) => this.mandados = mandados;
  Child({
    required int edad,
    required int ahorros,
    required int herencia,
    required int acumulado,
    required this.mensualidad,
    required this.mandados
  }):super(edad,ahorros,herencia,acumulado);
}
