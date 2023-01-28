import 'package:flutter/material.dart';
import 'package:projeto_pergunta/perguntas/perguntas.dart';

main(){
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget{
  const PerguntaApp({super.key});
  void responder(){
    print('Pergunta Respondida');
  }
  Widget build(BuildContext context){
    var perguntas = Perguntas;
     return  MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           centerTitle: true,
           title: const Text("Perguntas") ,
         ),
         body: Center(
           child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text(perguntas[0]),
                 ElevatedButton(
                     onPressed: (){},
                     child: const Text("Resposta 1"),
                 ),
                 ElevatedButton(
                   onPressed: (){},
                   child: const Text("Resposta 2"),
                 ),
                 ElevatedButton(
                   onPressed: (){},
                   child: const Text("Resposta 3"),
                 ),],
           ),
         ),
       ),
     );
  }
}