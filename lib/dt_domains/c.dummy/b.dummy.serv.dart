part of '_index.dart';

final x1DummyServ = DummyServ();

class DummyServ {
  DummyProv get pv => x1DummyProv.st;

  init() {
    logxx.i(DummyServ, '...');
    pv.rxIntList.st = [];
    futureInit();
  }

  // ----- ----- ----- ----- -----

  addToList() {
    pv.rxIntList.st = [...pv.rxIntList.st, pv.rxIntFuture.st];
  }

  Future<void> futureInit() async {
    pv.rxIntFuture.stateAsync = x1DummyRepo.st.futureInit();
  }

  futureIncrease() {
    pv.rxIntFuture.stateAsync = x1DummyRepo.st.futureIncrease(pv.rxIntFuture.st);
  }

  futureRandom() {
    pv.rxIntFuture.stateAsync = x1DummyRepo.st.futureRandom();
  }

  // ----- ----- ----- ----- -----

  streamSubs() => x1DummyRepo.st.streamIncrease().listen((event) => pv.rxIntStream.st = event);

  start() {
    stop();
    pv.rxIntStream.subscription = streamSubs();
    pv.rxSubsStatus.st = 'start';
  }

  stop() {
    pv.rxIntStream.subscription!.cancel();
    pv.rxSubsStatus.st = 'stop';
  }

  pause() {
    pv.rxIntStream.subscription!.pause();
    pv.rxSubsStatus.st = 'pause';
  }

  resume() {
    pv.rxIntStream.subscription!.resume();
    pv.rxSubsStatus.st = 'resume';
  }
}
