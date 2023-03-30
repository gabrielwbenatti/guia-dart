part of 'log.dart';

class Printer {
  const Printer({this.inicio = '', this.fim = ''});
  final String inicio;
  final String fim;

  void _log(_CoresANSI cor, Object object) {
    io.stdout.writeln(
      '${_ansiCores[cor]}'
      '$inicio$object$fim'
      '$_resetarCor',
    );
  }
}
