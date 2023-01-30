import 'package:flutter/material.dart';

class Resutaldo extends StatelessWidget {
  final int pontuacao;
  final void Function() reniciarFormulario;
  const Resutaldo(
      {super.key, required this.pontuacao, required this.reniciarFormulario});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'PARABÉNS';
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else if (pontuacao < 16) {
      return 'Impressionanete';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              fraseResultado,
              style: const TextStyle(fontSize: 28),
            ),
          ),
          TextButton(
            onPressed: reniciarFormulario,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ), 
            child: const Text('<Reiniciar formulário>'),
          ),
        ],
      ),
    );
  }
}
