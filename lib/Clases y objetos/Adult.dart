import 'dart:html';

import 'package:calculadora_de_la_vida/Clases%20y%20objetos/Joven.dart';

class Adult extends Joven{
    int salario;
    int inversiones;
    int hijos;
    int varios;
    // Constructor
    Adult.n(this.salario, this.inversiones, this.hijos, this.varios) : super.n(0, 0, 0, 0, 0);
    // getters and setters
    int get getSalario => salario;
    set setSalario(int salario) => this.salario = salario;
    int get getInversiones => inversiones;
    set setInversiones(int inversiones) => this.inversiones = inversiones;
    int get getHijos => hijos;
    set setHijos(int hijos) => this.hijos = hijos;
    int get getVarios => varios;
    set setVarios(int varios) => this.varios = varios;
  Adult({
    required int edad,
    required int ahorros,
    required int estudios,
    required int recreacion,
    required int herencia,
    required int acumulado,
    required int gastosPareja,
    required int subsidio,
    required this.salario,
    required this.inversiones,
    required this.hijos,
    required this.varios
  }):super(edad: edad,ahorros: ahorros,trabajoMT: 0,estudios: estudios,recreacion: recreacion,
  gastosPareja: gastosPareja,subsidio: subsidio,herencia: herencia,acumulado: acumulado);
  //Getters and setters
  int get getSalario => salario;
  set setSalariio(int salario) => this.salario = salario;
  int get getInversiones => inversiones;
  set setInversiones(int inversiones) => this.inversiones;
  int get getHijos => hijos;
  set setHijos(int hijos)=> this.hijos =hijos;
  int get gatVarios => varios;
  set setVarios(int varios) => varios;
}