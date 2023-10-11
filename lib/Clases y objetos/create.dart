import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Adult.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Joven.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/child.dart';
class Create{
  static final Create _instance=Create._(0);
  Create._(this.edad);
  static Create getInstance() {
    return _instance;
  }
  int edad;
  Joven? young;
  Child ?child;
  Adult?adult;
  void createYoung(int salario, int ahorros,int herencia, int estudios, int recreacion, int pareja, int subsidio){
    int acumulado = salario+ahorros+herencia-estudios-recreacion+pareja+subsidio;
    Joven joven = Joven(edad: edad, ahorros: ahorros, herencia: herencia, acumulado: acumulado, 
    trabajoMT: salario, estudios: estudios, recreacion: recreacion, gastosPareja: pareja, subsidio: subsidio);
    young=joven;
  }
  void createChild(int ahorros, int herencia, int mensualidad,
  int mandados){
    int acumulado = ahorros+herencia+mensualidad+mandados;
    Child nino =Child(edad: edad, ahorros: ahorros, herencia: herencia, acumulado: acumulado,
    mensualidad: mensualidad, mandados: mandados);
    child = nino;
  }
  void createAdult(int salario, int ahorros, int herencia,
  int estudios, int recreacion, int pareja, int subsidio, int inversiones, 
  int hijos, int varios){
    int acumulado = salario+ahorros+herencia-estudios-recreacion+pareja+subsidio+inversiones-hijos+varios;
    Adult adulto = Adult(edad: edad, ahorros: ahorros, estudios: estudios, recreacion: recreacion,
    herencia: herencia, acumulado: acumulado, gastosPareja: pareja, subsidio: subsidio, 
    salario: salario, inversiones: inversiones, hijos: hijos, varios: varios);
    adult = adulto;
  }
}
