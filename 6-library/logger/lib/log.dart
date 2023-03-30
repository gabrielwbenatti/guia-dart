library logger;

import 'dart:io' as io;

enum _CoresANSI { verde, vermelho, azul }

enum Nivel { info, warning, error }

const _resetarCor = '\x1b[m';

// Tabela com cores: https://talyian.github.io/ansicolors/
const _ansiCores = {
  _CoresANSI.vermelho: '\x1b[31m',
  _CoresANSI.verde: '\x1b[32m',
  _CoresANSI.azul: '\x1b[36m',
};

void info(Object object) => _log(_CoresANSI.verde, '[INFO] $object');
void warning(Object object) => _log(_CoresANSI.azul, '[WARNING] $object');
void error(Object object) => _log(_CoresANSI.vermelho, '[ERROR] $object');

void _log(_CoresANSI cor, Object object) {
  io.stdout.writeln('${_ansiCores[cor]}$object$_resetarCor');
}

// o trecho '\x1b[31m' define a cor vermelha
// o trecho '\x1b[m' volta a cor padrão