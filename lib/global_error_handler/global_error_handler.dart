import 'package:flutter/foundation.dart';
import 'package:shared/shared.dart';

class GlobalErrorHandler {
  const GlobalErrorHandler._();

  static void init() {
    FlutterError.onError = (FlutterErrorDetails details) {
      LoggerPlus.instance.error(
        'Flutter error:',
        error: details.exception,
        stackTrace: details.stack,
      );
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      LoggerPlus.instance.error('Platform error:', error: error, stackTrace: stack);
      return true;
    };
  }
}
