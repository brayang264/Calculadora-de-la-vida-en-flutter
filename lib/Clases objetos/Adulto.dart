import 'package:calculadora_de_la_vida/Clases%20objetos/Joven.dart';

class Adulto extends Joven{
    int salario;
    int inversiones;
    int hijos;
    int varios;
  Adulto({
    required int edad,
    required int ahorros,
    required int estudios,
    required int recreacion,
    required int herencia,
    required int gastosPareja,
    required int subsidio,
    required this.salario,
    required this.inversiones,
    required this.hijos,
    required this.varios
  }):super(edad: edad,ahorros: ahorros,trabajoMT: 0,estudios: estudios,recreacion: recreacion,
  gastosPareja: gastosPareja,subsidio: subsidio,herencia: herencia);
}