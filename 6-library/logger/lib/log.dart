library logger;

import 'dart:io' as io;

enum CoresANSI { verde, vermelho, azul }

const resetarCor = '\x1b[m';

// Tabela com cores: https://talyian.github.io/ansicolors/
const ansiCores = {
  CoresANSI.vermelho: '\x1b[31m',
  CoresANSI.verde: '\x1b[32m',
  CoresANSI.azul: '\x1b[36m',
};

void info(Object object) => log(CoresANSI.verde, '[ERROR] $object');
void warning(Object object) => log(CoresANSI.azul, '[ERROR] $object');
void error(Object object) => log(CoresANSI.vermelho, '[ERROR] $object');

void log(CoresANSI cor, Object object) {
  io.stdout.writeln('${ansiCores[cor]}$object$resetarCor');
}

// o trecho '\x1b[31m' define a cor vermelha
// o trecho '\x1b[m' volta a cor padrão