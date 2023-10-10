class Persona{
  //Campos de la clase
  int edad;
  int ahorros;
  int herencia;
  //Constructor
  Persona(this.edad,this.ahorros,this.herencia);
  //Getters and setters
  int get getEdad => edad;
  set setEdad(int edad) => this.edad = edad;
  int get getAhorros => ahorros;
  set setAhorros(int ahorros)=>this.ahorros = ahorros;
}