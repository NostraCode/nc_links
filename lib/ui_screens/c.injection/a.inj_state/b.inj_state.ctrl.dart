part of '_index.dart';

final x1InjStateCtrl = InjStateCtrl();

class InjStateCtrl {
  InjStateData get dt => x1InjStateData.st;

  init() => logxx.i(InjStateCtrl, '...');

  increase() {
    dt.int0 = dt.int0 + 1;
    dt.rxInt1.st = dt.rxInt1.st + 1;
    dt.rxInt2.st = dt.rxInt2.st + 1;
  }

  refresh() => x1DummyServ.futureInit();
  futureRandom() => x1DummyServ.futureRandom();
  futureIncrease() => x1DummyServ.futureIncrease();

  start() => x1DummyServ.start();
  stop() => x1DummyServ.stop();
  pause() => x1DummyServ.pause();
  resume() => x1DummyServ.resume();
}
