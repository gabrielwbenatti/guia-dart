import 'dart:html';

import 'package:jogo/src/partida.dart';

Partida configurarPartida() {
  return Partida()
    ..criarRegra(tesoura, acao: 'corta', perdedor: papel)
    ..criarRegra(tesoura, acao: 'decapita', perdedor: lagarto)
    ..criarRegra(papel, acao: 'cobre', perdedor: pedra)
    ..criarRegra(papel, acao: 'refuta', perdedor: spock)
    ..criarRegra(pedra, acao: 'esmaga', perdedor: lagarto)
    ..criarRegra(pedra, acao: 'quebra', perdedor: tesoura)
    ..criarRegra(lagarto, acao: 'envenena', perdedor: spock)
    ..criarRegra(lagarto, acao: 'come', perdedor: papel)
    ..criarRegra(spock, acao: 'esmaga', perdedor: tesoura)
    ..criarRegra(spock, acao: 'vaporiza', perdedor: pedra);
}

late DivElement divOpcoes;
late DivElement divResultado;

void inicializarReferencias() {
  divOpcoes = querySelector('#opcoes') as DivElement;
  divResultado = querySelector('#resultado') as DivElement;
}

void main() {
  inicializarReferencias();
  final partida = configurarPartida();

  for (final opcao in opcoes) {
    divOpcoes.append(
      ImageButtonInputElement()
        ..className = 'opcao'
        ..src = 'images/$opcao.png'
        ..height = 120,
    );
  }
}
