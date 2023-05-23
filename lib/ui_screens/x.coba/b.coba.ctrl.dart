part of '_index.dart';

class CobaCtrl {
  CobaData get dt => Data.coba.st;

  init() => logxx.i(CobaCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
