import 'package:flutter/material.dart';
import 'package:projeto_pergunta/style/questionario.dart';
import 'package:projeto_pergunta/style/resultado.dart';
import './questoes/perguntas.dart';

main(){
  runApp( const PerguntaApp());
}

class PerguntaApp extends StatefulWidget{
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp>{

  var indexPergunta = 0;
  void controlerIndex(){
    if(chegouFinalDaLista(indexPergunta)){
       setState(() {
      indexPergunta++;
    });
    }
  }
  @override
  Widget build(BuildContext context){

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Perguntas") ,
        ),
        body: chegouFinalDaLista(indexPergunta) 
         ? Questionario(indexPergunta: indexPergunta, controlerIndex: controlerIndex)
         : const Resutaldo(),
      ),
    );
  }
}