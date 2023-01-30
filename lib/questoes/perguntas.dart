const _perguntas = [
  {
    'texto': 'Qual sua cor favorita?',
    'resposta': 
    [
        {'texto':'Vermelho', 'pontuacao': 10},
        {'texto':'Amarelo',  'pontuacao': 5},
        {'texto':'Azul',     'pontuacao': 3},
        {'texto':'Preto',    'pontuacao': 1},
    ],
  },
  {
    'texto': 'Qual seu animal favorito?',
    'resposta': 
    [
      {'texto': 'Gato',     'pontuacao' : 8 },
      {'texto': 'Cachorro', 'pontuacao' : 2 },
      {'texto': 'Papagaio', 'pontuacao' : 2 },
      {'texto': 'Cavalo',   'pontuacao' : 1 },
    ],
  },
  {
    'texto': 'Qual seu Desenvolvedor Favorito?',
    'resposta': 
    [
      {'texto': 'Antônio',   'pontuacao': 4 }, 
      {'texto': 'Cláudio',   'pontuacao': 6 },   
      {'texto': 'Emarielle', 'pontuacao': 8 }, 
      {'texto': 'Juan ',     'pontuacao': 1 },
    ],
  },
];

get perguntas {
  return _perguntas;
}

bool chegouFinalDaLista(var perguntaSelecionada) {
  return perguntaSelecionada < perguntas.length;
}
