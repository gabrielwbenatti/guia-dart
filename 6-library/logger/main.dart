import 'lib/log.dart';

void main() {
  const logger = Logger(nivel: Nivel.warning);
  logger.error('Erro');
  logger.warning('Warning');
  logger.info('Info');
}
