class Persona{
  //Campos de la clase
  int edad;
  int ahorros;
  int herencia;
  int acumulado;
  //Constructor
  Persona(this.edad,this.ahorros,this.herencia,this.acumulado);
  //Getters and setters
  int get getEdad => edad;
  set setEdad(int edad) => this.edad = edad;
  int get getAhorros => ahorros;
  set setAhorros(int ahorros)=>this.ahorros = ahorros;
  int get getAcumulado => acumulado;
  set setAcumulado(int acumulado) => acumulado;
}