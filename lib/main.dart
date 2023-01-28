import 'package:flutter/material.dart';
import './style/opcao.dart';
import './style/questao.dart';
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
  var perguntaSelecionada = 0;
  void _responder(){
    setState(() {
      perguntaSelecionada++;
    });
  }
  @override
  Widget build(BuildContext context){


    //Os dados são instanciados em formado de Lista, dos quais dois um é de String
    //que captura os itens do map dentro do arquivo "perguntas.dart" após isso
    //ele armazena na variável "textoResp". A instancia "cast()" transforma um objeto em lista

    List <String> respostas = Perguntas[perguntaSelecionada].cast()['resposta'];

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
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
              FraseQuestao(posicao: perguntaSelecionada),
              ...respostas.map((t) => Respostas(respostas: t, onSelecao: _responder)).toList(),
              // Respostas(respostas: "Resposta 1", onSelecao: _responder),
              // Respostas(respostas: "Resposta 2", onSelecao: _responder),
              // Respostas(respostas: "Resposta 3", onSelecao: _responder),
              // Respostas(respostas: "Resposta 4", onSelecao: _responder),
            ],
          ),
        ),
      ),
    );
  }
}



// for(String textoResp in respostas ){
//   widgets.add(Respostas(respostas: textoResp, onSelecao: _responder));
//   print(textoResp);
// }
//Equivalente
//List<Widget> widgets = respostas.map((t) => Respostas(respostas: t, onSelecao: _responder)).toList()
