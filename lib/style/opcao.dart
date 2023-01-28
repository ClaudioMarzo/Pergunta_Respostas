import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String respostas;
  final void Function() onSelecao;
  const Respostas({super.key, required this.respostas, required this.onSelecao});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.fromLTRB(20, 0, 20, 0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelecao,
        child: Text(respostas),
      ),
    );
  }
}
