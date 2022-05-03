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

  refresh() => x1XdummyServ.futureInit();
  futureRandom() => x1XdummyServ.futureRandom();
  futureIncrease() => x1XdummyServ.futureIncrease();

  start() => x1XdummyServ.start();
  stop() => x1XdummyServ.stop();
  pause() => x1XdummyServ.pause();
  resume() => x1XdummyServ.resume();
}
