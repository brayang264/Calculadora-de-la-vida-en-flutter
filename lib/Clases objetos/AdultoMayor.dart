import 'package:calculadora_de_la_vida/Clases%20objetos/Adulto.dart';

class AdultoMayor extends Adulto{
  int pension;
  
  AdultoMayor({
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
    required this.pension
  }):super(edad: edad,ahorros: ahorros,estudios: estudios,recreacion: recreacion,gastosPareja: gastosPareja,
  salario: salario,inversiones: inversiones,hijos: hijos,varios: varios,subsidio: subsidio,herencia: herencia);
}