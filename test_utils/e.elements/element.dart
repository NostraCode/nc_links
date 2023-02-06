part of '_index.dart';

/// Elements on Each Page
/// _ElementsA => elements of Home
/// _ElementsB => elements of ProductList
/// _ElementsA => elements of ProductDetail
/// _ElementsA => elements of Cart

abstract class Elm {
  /// element at Home
  static ElementA get home => ElementA();

  /// element at ProductList
  static ElementB get prodList => ElementB();

  /// element at Product Detail
  static ElementC get prodDetail => ElementC();

  /// element at Cart
  static ElementD get cart => ElementD();

  static ElementZ get zzz => ElementZ();
}
