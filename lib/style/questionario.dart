import 'package:flutter/material.dart';
import '../questoes/perguntas.dart';
import 'package:projeto_pergunta/style/questao.dart';
import '../style/opcao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> pergun = perguntas;
  final int indexPergunta;
  final void Function() controlerIndex;

  Questionario({super.key, required this.indexPergunta, required this.controlerIndex});
 
  @override
  Widget build(BuildContext context) {
     dynamic respostas = chegouFinalDaLista(indexPergunta)
       ? pergun[indexPergunta].cast()['resposta']
       : null;
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FraseQuestao(posicao: indexPergunta),
              ...respostas.map((t) => Respostas(respostas: t, onSelecao: controlerIndex)).toList(),
              // Respostas(respostas: "Resposta 1", onSelecao: _responder),
              // Respostas(respostas: "Resposta 2", onSelecao: _responder),
              // Respostas(respostas: "Resposta 3", onSelecao: _responder),
              // Respostas(respostas: "Resposta 4", onSelecao: _responder),
        ],
      ),
    );
  }
}