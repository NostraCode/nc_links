part of '_index.dart';

class DummyServ {
  DummyProv get pv => Prov.dummy.st;

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
    pv.rxIntFuture.stateAsync = Repo.dummy.st.futureInit();
  }

  futureIncrease() {
    pv.rxIntFuture.stateAsync = Repo.dummy.st.futureIncrease(pv.rxIntFuture.st);
  }

  futureRandom() {
    pv.rxIntFuture.stateAsync = Repo.dummy.st.futureRandom();
  }

  // ----- ----- ----- ----- -----

  streamSubs() => Repo.dummy.st.streamIncrease().listen((event) => pv.rxIntStream.st = event);

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
