import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Persona.dart';

class Nino extends Persona{
  int mensualidad;
  int mandados;
  Nino({
    required int edad,
    required int ahorros,
    required int herencia,
    required int acumulado,
    required this.mensualidad,
    required this.mandados
  }):super(edad,ahorros,herencia,acumulado);
}
