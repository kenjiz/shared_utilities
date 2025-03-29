import 'package:logger/logger.dart';

class LoggerPlus {
  LoggerPlus._internal();
  static final LoggerPlus _instance = LoggerPlus._internal();

  static LoggerPlus get instance => _instance;

  final Logger _logger = Logger(
    printer: PrettyPrinter(methodCount: 5, dateTimeFormat: DateTimeFormat.dateAndTime),
  );

  void fatal(String message, {dynamic error, StackTrace? stackTrace}) =>
      _logger.f(message, error: error, stackTrace: stackTrace);

  void error(String message, {dynamic error, StackTrace? stackTrace}) =>
      _logger.e(message, error: error, stackTrace: stackTrace);

  void warning(String message) => _logger.w(message);

  void info(String message) => _logger.i(message);

  void debug(String message) => _logger.d(message);

  void verbose(String message) => _logger.t(message);

  void apiError(String prefix, String message, {dynamic error, StackTrace? stackTrace}) => Logger(
        printer: PrefixPrinter(PrettyPrinter(), fatal: '[API_${prefix.toUpperCase()}]: '),
      ).f(message, error: error, stackTrace: stackTrace);
}
