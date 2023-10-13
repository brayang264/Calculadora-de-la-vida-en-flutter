class Persona{
  //Campos de la clase
  int _edad;
  int _ahorros;
  int _herencia;
  int _acumulado;
  //Constructor
  Persona(this._edad,this._ahorros,this._herencia,this._acumulado);
  //Getters and setters
  int get getEdad => _edad;
  set setEdad(int edad) => _edad;
  int get getAhorros => _ahorros;
  set setAhorros(int ahorros)=> _ahorros;
  int get getAcumulado => _acumulado;
  set setAcumulado(int acumulado) => _acumulado;
  int get getHerencia => _herencia;
  set setHerencia(int acumulado) => _herencia;
}