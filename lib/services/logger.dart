// ignore_for_file: avoid_print
import 'dart:convert';

enum LogColor { red, green, yellow, blue, cyan }

const String _red = "\x1B[31m";
const String _green = "\x1B[32m";
const String _yellow = "\x1B[33m";
const String _blue = "\x1B[34m";
const String _cyan = "\x1B[36m";
const String _reset = "\x1B[0m";

String getLogColorCode(LogColor color) {
  switch (color) {
    case LogColor.red:
      return _red;
    case LogColor.green:
      return _green;
    case LogColor.yellow:
      return _yellow;
    case LogColor.blue:
      return _blue;
    case LogColor.cyan:
      return _cyan;
  }
}

class Logger {
  static void log(Object object, {LogColor? color}) {
    if (color == null) {
      print("$object");
    } else {
      print("${getLogColorCode(color)} $object $_reset");
    }
  }

  static void prettyPrintJson(String input, {LogColor? color}) {
    const JsonDecoder decoder = JsonDecoder();
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    final dynamic object = decoder.convert(input);
    final dynamic prettyString = encoder.convert(object);

    prettyString
        .split('\n')
        .forEach((dynamic element) => _prettyPrint(element.toString(), color: color));
  }

  static void _prettyPrint(String object, {LogColor? color}) {
    if (color == null) {
      print(object);
    } else {
      print("${getLogColorCode(color)} $object $_reset");
    }
  }
}
