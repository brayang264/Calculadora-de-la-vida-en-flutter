import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Adult.dart';

class OldAdult extends Adult{
  int pension;
  
  OldAdult({
    required int edad,
    required int ahorros,
    required int estudios,
    required int recreacion,
    required int gastosPareja,
    required int salario,
    required int herencia,
    required int subsidio,
    required int inversiones,
    required int hijos,
    required int varios,
    required int acumulado,
    required this.pension
  }):super(edad: edad,ahorros: ahorros,estudios: estudios,recreacion: recreacion,gastosPareja: gastosPareja,
  salario: salario,inversiones: inversiones,hijos: hijos,varios: varios,subsidio: subsidio,herencia: herencia, acumulado: acumulado);
}