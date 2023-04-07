library logger;

import 'printer.dart';

enum Cores { verde, vermelho, azul }

enum Nivel { info, warning, error }

/// Código ANSI para resetar a cor do terminal
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

  /// Controla o [Nivel] permitido do log para ser impresso, quanto mais crítico
  /// mais restrito é, e menos níveis são impressos
  /// Abaixo opções ordenadas pelo menos crítico
  ///
  /// * [Nivel.info] significa que serão impressos todos os níveis
  /// * [Nivel.warning] são impressos os logs de [Nivel.warning]
  ///   e [Nivel.error]
  /// * [Nivel.error] é o nível mais restrito, e apenas
  ///   [Nivel.error] são impressos
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
