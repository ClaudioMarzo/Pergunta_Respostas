final _perguntas = const [
  {
    'texto': 'Qual sua cor favorita?',
    'resposta': ['Vermelho','Amarelo','Azul','Preto'],
  },
  {
    'texto': 'Qual seu animal favorito?',
    'resposta': ['Gato','Cachorro','Papagaio','Cavalo'],
  },
  {
    'texto': 'Qual seu Desenvolvedor Favorito?',
    'resposta': ['Antônio','Cláudio','Emarielle','Juan '],
  },
];

get perguntas{
  return _perguntas;
}

bool chegouFinalDaLista(var perguntaSelecionada ){
  return perguntaSelecionada < perguntas.length ;
}



