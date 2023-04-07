import 'log.dart';
import 'printer_console.dart' if (dart.library.io) 'printer_io.dart' as printer;

class Printer {
  const Printer({this.inicio = '', this.fim = ''});
  final String inicio;
  final String fim;

  void log(Cores cor, Object object) {
    printer.log('${ansiCores[cor]}' '$inicio' '$object' '$fim' '$resetarCor');
  }
}
