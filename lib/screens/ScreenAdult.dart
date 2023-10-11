import 'package:calculadora_de_la_vida/Clases%20y%20objetos/create.dart';
import 'package:flutter/material.dart';
class ScreenAdult extends StatelessWidget{
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();
  final TextEditingController _textController5 = TextEditingController();
  final TextEditingController _textController6 = TextEditingController();
  final TextEditingController _textController7 = TextEditingController();
  final TextEditingController _textController8 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etapa de la juventud"),
        backgroundColor: const Color.fromARGB(251, 104, 208, 252),
      ),
      body: SingleChildScrollView(
        child:  Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text("Esta etapa va desde los 15 hasta los 25 años, completa la siguiente información: ",
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
                  label: Text("Ingresa acá el promedio de tu salario durante esta etapa",
                  ),
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController2,
                decoration: const InputDecoration(
                  label: Text("Ingresa acá la cantidad de años que trabajaste durante esta etapa",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController3,
                decoration: const InputDecoration(
                  label: Text("Ingresa acá el total de dinero que ahorraste",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController4,
                decoration: const InputDecoration(
                  label: Text("Si recibiste alguna herencia pon el valor total, si no pon 0",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController5,
                decoration: const InputDecoration(
                  label: Text("Ingresa acá el monto que gastaste en tus estudios",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController6,
                decoration: const InputDecoration(
                  label: Text("Ingresa acá el promedio que gastaste en recreación o parches durante todos estos años",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController7,
                decoration: const InputDecoration(
                  label: Text("Su tuviste pareja, ingresa el monto que invertiste en el/ella (pon un monto negativo"
                  " si gastaste más dinero del que recibiste)",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController8,
                decoration: const InputDecoration(
                  label: Text("Si recibiste algun subsidio, ingresa el total que recibiste durante todos esos años",),
                border: OutlineInputBorder()),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: (){
                  nextStage(context,_textController.text,_textController2.text,_textController3.text,
                  _textController4.text,_textController5.text,_textController6.text,_textController7.text,
                  _textController8.text);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50)
                ),
                child: const Text("Siguiente etapa1"),
              ),
              const SizedBox(height: 25),
            ],)
          ),
        ),
      );
  }
  //Metodos
  void nextStage(BuildContext context, String salario, String trabajados, String ahorros,String herencia,
  String estudios, String recreacion, String pareja, String subsidio ){
    if(!(isNumber(salario)||isNumber(trabajados)||isNumber(ahorros)||isNumber(herencia)
    ||isNumber(estudios)||isNumber(recreacion)||isNumber(pareja)||isNumber(subsidio))){
      showAlert(context,"Ingrese solamente valores positivos o negativos\nSi no recibio alguno de los ingresos"
      " solicitados ponga un 0");
    }else{
      Create create = Create.getInstance();
      create.createYoung(int.parse(salario)*int.parse(trabajados), int.parse(ahorros), 
      int.parse(herencia), int.parse(estudios), int.parse(recreacion), int.parse(pareja), int.parse(subsidio));
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