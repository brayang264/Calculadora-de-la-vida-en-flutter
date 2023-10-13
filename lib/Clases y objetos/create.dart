import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Adult.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Joven.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/OldAdult.dart';
import 'package:calculadora_de_la_vida/Clases%20y%20objetos/child.dart';
class Create{
  static final Create _instance=Create._(0);
  Create._(this.edad);
  static Create getInstance() {
    return _instance;
  }
  int acumuladoChid=0;
  int acumuladoJoven=0;
  int acumuladoAdult=0;
  int acumuladoOldAdult=0;
  int acumuladoTotal=0;
  int edad;
  Joven? young;
  Child ?child;
  Adult?adult;
  OldAdult?oldAdult;
  //Meotodos de la clase
  void createYoung(int salario, int ahorros,int herencia, int estudios, int recreacion, int pareja, int subsidio){
    int acumulado = salario+ahorros+herencia-estudios-recreacion+pareja+subsidio;
    Joven joven = Joven(edad: edad, ahorros: ahorros, herencia: herencia, acumulado: acumulado, 
    trabajoMT: salario, estudios: estudios, recreacion: recreacion, gastosPareja: pareja, subsidio: subsidio);
    young=joven;
    acumuladoJoven =acumulado;
    acumuladoTotal += acumulado;
  }
  void createChild(int ahorros, int herencia, int mensualidad,
  int mandados){
    int acumulado = ahorros+herencia+mensualidad+mandados;
    Child nino =Child(edad: edad, ahorros: ahorros, herencia: herencia, acumulado: acumulado,
    mensualidad: mensualidad, mandados: mandados);
    child = nino;
    acumuladoChid = acumulado;
    acumuladoTotal = acumulado;
  }
  void createAdult(int salario, int ahorros, int herencia,
  int estudios, int recreacion, int pareja, int subsidio, int inversiones, 
  int hijos, int varios){
    int acumulado = salario+ahorros+herencia-estudios-recreacion+pareja+subsidio+inversiones-hijos+varios;
    Adult adulto = Adult(edad: edad, ahorros: ahorros, estudios: estudios, recreacion: recreacion,
    herencia: herencia, acumulado: acumulado, gastosPareja: pareja, subsidio: subsidio, 
    salario: salario, inversiones: inversiones, hijos: hijos, varios: varios);
    acumuladoAdult = acumulado;
    acumuladoTotal += acumulado;
    adult = adulto;
  }
  void createOldAdult(int salario, int ahorros, int herencia,
  int estudios, int recreacion, int pareja, int subsidio, int inversiones, 
  int hijos, int varios, int pension){
    int acumulado = salario+ahorros+herencia-estudios-recreacion+pareja+subsidio+inversiones+hijos+varios+pension;
    OldAdult adultoMayor = OldAdult(edad: edad, ahorros: ahorros, estudios: estudios, recreacion: recreacion,
    gastosPareja: pareja, salario: salario, herencia: herencia, subsidio: subsidio, inversiones: inversiones, 
    hijos: hijos, varios: varios, acumulado: acumulado, pension: pension);
    oldAdult = adultoMayor;
    acumuladoOldAdult = acumulado;
    acumuladoTotal += acumulado;
  }
}
