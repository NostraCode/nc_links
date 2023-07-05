part of '_index.dart';

class DummyServ {
  init() {
    logxx.i(DummyServ, '...');
    _pv.rxIntList.st = [];
    futureInit();
  }

  // ----- ----- ----- ----- -----

  addToList() {
    _pv.rxIntList.st = [..._pv.rxIntList.st, _pv.rxIntFuture.st];
  }

  Future<void> futureInit() async {
    _pv.rxIntFuture.stateAsync = Repo.dummy.st.futureInit();
  }

  futureIncrease() {
    _pv.rxIntFuture.stateAsync = Repo.dummy.st.futureIncrease(_pv.rxIntFuture.st);
  }

  futureRandom() {
    _pv.rxIntFuture.stateAsync = Repo.dummy.st.futureRandom();
  }

  // ----- ----- ----- ----- -----

  streamSubs() => Repo.dummy.st.streamIncrease().listen((event) => _pv.rxIntStream.st = event);

  start() {
    stop();
    _pv.rxIntStream.subscription = streamSubs();
    _pv.rxSubsStatus.st = 'start';
  }

  stop() {
    _pv.rxIntStream.subscription!.cancel();
    _pv.rxSubsStatus.st = 'stop';
  }

  pause() {
    _pv.rxIntStream.subscription!.pause();
    _pv.rxSubsStatus.st = 'pause';
  }

  resume() {
    _pv.rxIntStream.subscription!.resume();
    _pv.rxSubsStatus.st = 'resume';
  }
}
