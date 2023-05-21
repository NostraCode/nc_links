part of '_index.dart';

class NotFoundCtrl {
  NotFoundData get dt => Data.notFound.st;

  init() => logxx.i(NotFoundCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
