import 'package:logger/logger.dart';

class Log extends Logger {
  static Log? logger;
  CustomLogPrinter printer;

  Log(this.printer) : super(printer: printer);

  factory Log.get(String name) {
    if (logger == null || name != logger?.printer.className) {
      logger = Log._(CustomLogPrinter(name));
    }
    return logger!;
  }

  Log._(this.printer) : super(printer: printer);

  static void debug(String logName, String log) => Log.get(logName).d(log);

  static void warn(String logName, String log) => Log.get(logName).w(log);

  static void exception(String logName, String log, Exception? e) =>
      Log.get(logName).e(log, e);

  static void error(String logName, String log, StackTrace? e) =>
      Log.get(logName).e(log, e);

  static void verbose(String logName, String log) => Log.get(logName).v(log);
}

class CustomLogPrinter extends LogPrinter {
  String? className;

  CustomLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;
    return [color!('$emoji: $className - $message')];
  }
}
