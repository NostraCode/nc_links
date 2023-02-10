part of '_index.dart';

/// Elements on Each Page
/// _ElementsA => elements of cobaSatu
/// _ElementsB => elements of cobaDua
/// _ElementsC => elements of cobaTiga
abstract class Elm {
  /// element at cobaSatu
  static ElementA get cobaSatu => ElementA();

  /// element at cobaDua
  static ElementB get cobaDua => ElementB();

  /// element at cobaTiga
  static ElementC get cobaTiga => ElementC();
}
