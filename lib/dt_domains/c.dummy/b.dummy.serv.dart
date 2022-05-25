part of '_index.dart';

final x1DummyServ = DummyServ();

class DummyServ {
  DummyData get dt => x1DummyData.st;

  init() {
    logxx.i(DummyServ, '...');
    dt.rxIntList.st = [];
    futureInit();
  }

  // ----- ----- ----- ----- -----

  addToList() {
    dt.rxIntList.st = [...dt.rxIntList.st, dt.rxIntFuture.st];
  }

  Future<void> futureInit() async {
    dt.rxIntFuture.stateAsync = x1DummyRepo.st.futureInit();
  }

  futureIncrease() {
    dt.rxIntFuture.stateAsync =
        x1DummyRepo.st.futureIncrease(dt.rxIntFuture.st);
  }

  futureRandom() {
    dt.rxIntFuture.stateAsync = x1DummyRepo.st.futureRandom();
  }

  // ----- ----- ----- ----- -----

  streamSubs() => x1DummyRepo.st
      .streamIncrease()
      .listen((event) => dt.rxIntStream.st = event);

  start() {
    stop();
    dt.rxIntStream.subscription = streamSubs();
    dt.rxSubsStatus.st = 'start';
  }

  stop() {
    dt.rxIntStream.subscription!.cancel();
    dt.rxSubsStatus.st = 'stop';
  }

  pause() {
    dt.rxIntStream.subscription!.pause();
    dt.rxSubsStatus.st = 'pause';
  }

  resume() {
    dt.rxIntStream.subscription!.resume();
    dt.rxSubsStatus.st = 'resume';
  }
}
