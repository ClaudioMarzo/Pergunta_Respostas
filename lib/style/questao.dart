import 'package:flutter/cupertino.dart';
import '../questoes//perguntas.dart';

class FraseQuestao extends StatelessWidget {
  
  List<Map<String,Object>> pergunta = perguntas;
  int posicao;
  FraseQuestao({required this.posicao});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.all(10),
      child: Text(pergunta[posicao]['texto'].toString(),
        style: const TextStyle(
          fontSize: 28
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
