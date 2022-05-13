part of '_index.dart';

final x1InjStateCtrl = InjStateCtrl();

class InjStateCtrl {
  InjStateData get dt => x1InjStateData.st;

  init() => loggerx(InjStateCtrl).v('init...');

  increase() {
    dt.int0 = dt.int0 + 1;
    dt.rmInt1.st = dt.rmInt1.st + 1;
    dt.rmInt2.st = dt.rmInt2.st + 1;
  }

  refresh() => x1DummyServ.futureInit();
  futureRandom() => x1DummyServ.futureRandom();
  futureIncrease() => x1DummyServ.futureIncrease();

  start() => x1DummyServ.start();
  stop() => x1DummyServ.stop();
  pause() => x1DummyServ.pause();
  resume() => x1DummyServ.resume();
}
