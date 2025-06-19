import 'package:logger/logger.dart';

class SafeSafaiLoggerHelper{
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    // Customize the log levels based on your need
    level: Level.debug,
  );

  static void debug(String message){
    _logger.d(message);
  }

  static void info(String message){
    _logger.d(message);
  }

  static void warning(String message){
    _logger.d(message);
  }

  static void error(String message){
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}