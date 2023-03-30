import 'lib/log.dart';

void main() {
  const logger = Logger(
    nivel: Nivel.warning,
    printer: Printer(inicio: 'Customizado: {', fim: '}'),
  );
  logger.error('Erro');
  logger.warning('Warning');
  logger.info('Info');
}
