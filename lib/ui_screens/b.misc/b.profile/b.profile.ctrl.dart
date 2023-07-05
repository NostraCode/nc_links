part of '_index.dart';

class ProfileCtrl {
  init() => logxx.i(ProfileCtrl, '...');

  action() {
    _dt.rxInt.st = _dt.rxInt.st + 1;
  }
}
