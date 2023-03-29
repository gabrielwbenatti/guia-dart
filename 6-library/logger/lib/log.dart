library logger;

import 'dart:io' as io;

void info(Object object) => io.stdout.writeln('[INFO] $object');
void warning(Object object) => io.stdout.writeln('[WARNING] $object');
void error(Object object) {
  // o trecho '\x1b[31m' define a cor vermelha
  // o trecho '\x1b[m' volta a cor padrão
  io.stdout.writeln('[ERROR] $object');
}
