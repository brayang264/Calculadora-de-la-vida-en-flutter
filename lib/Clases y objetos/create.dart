import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Joven.dart';
class Create{
  static final Create _instance=Create._(0);
  Create._(this.edad);
  static Create getInstance() {
    return _instance;
  }
  int edad;
  Joven? young;
  void createYoung(int salario, int ahorros,int herencia, int estudios, int recreacion, int pareja, int subsidio){
    int acumulado = salario+ahorros+herencia-estudios-recreacion+pareja+subsidio;
    Joven joven = Joven(edad: edad, ahorros: ahorros, herencia: herencia, acumulado: acumulado, 
    trabajoMT: salario, estudios: estudios, recreacion: recreacion, gastosPareja: pareja, subsidio: subsidio);
    young=joven;
  }
}