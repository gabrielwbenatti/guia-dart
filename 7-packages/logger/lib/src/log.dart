library logger;

import 'printer.dart';

enum Cores { verde, vermelho, azul }

enum Nivel { info, warning, error }

const resetarCor = '\x1b[m';

// Tabela com cores: https://talyian.github.io/ansicolors/
const ansiCores = {
  Cores.vermelho: '\x1b[31m',
  Cores.verde: '\x1b[32m',
  Cores.azul: '\x1b[36m',
};

class Logger {
  const Logger({
    required this.nivel,
    this.printer = const Printer(),
  });

  final Nivel nivel;
  final Printer printer;

  bool _habilitado(Nivel nivelHabilitado) {
    return nivelHabilitado.index >= nivel.index;
  }

  void info(Object object) {
    if (_habilitado(Nivel.info)) {
      printer.log(Cores.verde, '[INFO] $object');
    }
  }

  void warning(Object object) {
    if (_habilitado(Nivel.warning)) {
      printer.log(Cores.azul, '[WARNING] $object');
    }
  }

  void error(Object object) {
    if (_habilitado(Nivel.error)) {
      printer.log(Cores.vermelho, '[ERROR] $object');
    }
  }
}
