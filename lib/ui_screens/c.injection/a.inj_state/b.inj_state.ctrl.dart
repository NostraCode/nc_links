part of '_index.dart';

class InjStateCtrl {
  init() => logxx.i(InjStateCtrl, '...');

  increase() {
    _dt.int0 = _dt.int0 + 1;
    _dt.rxInt1.st = _dt.rxInt1.st + 1;
    _dt.rxInt2.st = _dt.rxInt2.st + 1;
  }

  refresh() => Serv.dummy.futureInit();
  futureRandom() => Serv.dummy.futureRandom();
  futureIncrease() => Serv.dummy.futureIncrease();

  start() => Serv.dummy.start();
  stop() => Serv.dummy.stop();
  pause() => Serv.dummy.pause();
  resume() => Serv.dummy.resume();
}
