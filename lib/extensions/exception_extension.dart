import 'package:shared_utilities/shared_utilities.dart';

extension ExceptionX on Exception {
  String get message => toString();

  void fatalLog() {
    LoggerPlus.instance.fatal('Fatal error occured: $message');
  }

  void errorLog() {
    LoggerPlus.instance.verbose('Error occured: $message');
  }
}
