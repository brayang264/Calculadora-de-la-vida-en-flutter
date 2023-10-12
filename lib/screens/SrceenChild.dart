import 'package:calculadora_de_la_vida/Clases%20y%20objetos/create.dart';
import 'package:calculadora_de_la_vida/screens/ScreenYoung.dart';
import 'package:calculadora_de_la_vida/screens/ScreenFinal.dart';
import 'package:flutter/material.dart';
class ScreenChild extends StatelessWidget{
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();
  final TextEditingController _textController5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etapa de la Niñez"),
        backgroundColor: const Color.fromARGB(251, 104, 208, 252),
      ),
      body: SingleChildScrollView(
        child:  Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text("Esta etapa va desde que naciste hasta los 14 años, completa la siguiente información: ",
              style:  TextStyle(
                color: Colors.black,
                fontFamily: "Century Gothic",
                fontSize: 25,
              ),),
              const SizedBox(height: 25,),
              const Text("Ingresa la siguiente información solicitada en cada recuadro, si en esta etapa no tuviste"
              " alguno de los siguientes ingresos o egresos pon un 0",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Century Gothic",
                fontSize: 14
              ),),
              const SizedBox(height: 20),
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  label: Text("Ingresa el total de ahorros que tuviste en esta etapa",
                  ),
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController2,
                decoration: const InputDecoration(
                  label: Text("Si durante esta etapa heredaste algo, ingresa el valor total de tu herencia",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController3,
                decoration: const InputDecoration(
                  label: Text("Si alguien te deba alguna mensualidad ingresa el valor que te daban mes a mes",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController4,
                decoration: const InputDecoration(
                  label: Text("¿Durante cuantos años te dieron esta mensualidad en esta etapa?",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController5,
                decoration: const InputDecoration(
                  label: Text("Ingresa el dinero total acumulado durante los años que te daban"
                  " algo por hacer mandados o tareas que te encargaban",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: (){
                  nextStage(context, _textController.text, _textController2.text, _textController3.text,
                  _textController4.text, _textController5.text);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50)
                ),
                child: const Text("Siguiente etapa"),
              ),
              const SizedBox(height: 25),
            ],)
          ),
        ),
      );
  }
  //Metodos
  void nextStage(BuildContext context, String ahorros, String herencia, String mensualidad, String tiempoMens,
  String mandados){
    if(!(isNumber(ahorros)&&isNumber(herencia)&&isNumber(mensualidad)&&isNumber(tiempoMens)&&isNumber(mandados))){
      showAlert(context, "Ingrese solamente valores positivos o negativos\nSi no recibio alguno de los ingresos"
      " solicitados ponga un 0");
    }else{
      Create create =Create.getInstance();
      create.createChild(int.parse(ahorros), int.parse(herencia),
      int.parse(mensualidad)*int.parse(tiempoMens),int.parse(mandados));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>(create.edad>14)?ScreenYoung():ScreenFinal()));
    }
    
  }

    bool isNumber(String text){
    return (int.tryParse(text)!=null)?true:false;
  }

  void showAlert(BuildContext context, String text){
    showDialog(
        context:context,
        builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Error"),
            content: Text(text),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text("Cerrar"),
              )
            ],
          );
        }
      );
  }
}