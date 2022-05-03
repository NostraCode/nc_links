part of '_index.dart';

final logger = _Logger().log;

Logger loggerx(Type className) {
  return _LoggerX().type(className);
}

class _Logger {
  static final _log = Logger(printer: _CustomPrinterWithoutType());
  Logger get log => _log;
}

class _LoggerX {
  Logger type(Type className) {
    return Logger(printer: _CustomPrinterWithType(className.toString()));
  }
}

class _CustomPrinterWithoutType extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;
    return [color!('$emoji $message')];
  }
}

class _CustomPrinterWithType extends LogPrinter {
  String className;
  _CustomPrinterWithType(this.className);

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;
    return [color!('$emoji $className: $message')];
  }
}
