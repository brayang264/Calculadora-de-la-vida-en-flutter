import 'package:calculadora_de_la_vida/Clases%20objetos/Persona.dart';

class Nino extends Persona{
  int mensualidad;
  int mandados;
  Nino({
    required int edad,
    required int ahorros,
    required int herencia,
    required this.mensualidad,
    required this.mandados
  }):super(edad,ahorros,herencia);
}
