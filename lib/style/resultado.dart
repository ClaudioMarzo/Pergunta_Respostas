import 'package:flutter/material.dart';

class Resutaldo extends StatelessWidget {
  const Resutaldo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: const Center(
          child: Text('Parabéns!! !',
          style: TextStyle(
            fontSize: 28
          ),
          ),
        ),
    );
  }
}