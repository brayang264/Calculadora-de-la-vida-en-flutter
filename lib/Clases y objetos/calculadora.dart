import 'package:calculadora_de_la_vida/Clases%20y%20objetos/operaciones.dart';

class Calculadora implements Operaciones{
  @override
  int sumar(numA,numB){
    return numA+numB;
  }
  @override
  int restar(numA,numB){
    return numA-numB;
  }
  @override
  int multiplicar(numA,numB){
    return numA*numB;
  }
  @override
  int dividir(numA,numB){
    return numA/numB;
  }
}