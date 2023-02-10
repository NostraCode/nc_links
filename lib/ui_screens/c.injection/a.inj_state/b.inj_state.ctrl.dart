part of '_index.dart';

class InjStateCtrl {
  InjStateData get dt => Data.injState.st;

  init() => logxx.i(InjStateCtrl, '...');

  increase() {
    dt.int0 = dt.int0 + 1;
    dt.rxInt1.st = dt.rxInt1.st + 1;
    dt.rxInt2.st = dt.rxInt2.st + 1;
  }

  refresh() => Serv.dummy.futureInit();
  futureRandom() => Serv.dummy.futureRandom();
  futureIncrease() => Serv.dummy.futureIncrease();

  start() => Serv.dummy.start();
  stop() => Serv.dummy.stop();
  pause() => Serv.dummy.pause();
  resume() => Serv.dummy.resume();
}
