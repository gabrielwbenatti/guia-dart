import 'package:logger/logger.dart';

void main(List<String> args) {
  const logger = Logger(
    nivel: Nivel.info,
    printer: Printer(inicio: 'Customizado {', fim: '}'),
  );

  logger.error('Este é um erro');
  logger.warning('Este é um warning');
  logger.info('Esta é uma info');
}
