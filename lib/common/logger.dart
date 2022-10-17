import 'package:logger/logger.dart';

final BaseLogger logger = _LoggerImpl();

abstract class BaseLogger {
  void i(String message);

  void e(dynamic subject);
}

class _LoggerImpl implements BaseLogger {
  final logger = Logger(
    printer: PrettyPrinter(),
  );

  final loggerNoStack = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      lineLength: 100,
    ),
  );

  @override
  void e(subject) {
    if (subject.runtimeType is String) {
      logger.e(subject);
    } else {
      logger.e(subject.toString());
    }
  }

  @override
  void i(String message) => loggerNoStack.i(message);
}
