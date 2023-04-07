import 'dart:io' as io;
import 'log.dart';

class Printer {
  const Printer({this.inicio = '', this.fim = ''});
  final String inicio;
  final String fim;

  void log(Cores cor, Object object) {
    io.stdout.writeln(
      '${ansiCores[cor]}'
      '$inicio$object$fim'
      '$resetarCor',
    );
  }
}
