part of '_index.dart';

final x1XdummyServ = XdummyServ();

class XdummyServ {
  XdummyData get dt => x1XdummyData.st;

  init() {
    loggerx(XdummyServ).v('init...');
    dt.rmIntList.st = [];
    futureInit();
  }

  // ----- ----- ----- ----- -----

  addToList() {
    dt.rmIntList.st = [...dt.rmIntList.st, dt.rmIntFuture.st];
  }

  Future<void> futureInit() async {
    dt.rmIntFuture.stateAsync = x1DummyRepo.st.futureInit();
  }

  futureIncrease() {
    dt.rmIntFuture.stateAsync =
        x1DummyRepo.st.futureIncrease(dt.rmIntFuture.st);
  }

  futureRandom() {
    dt.rmIntFuture.stateAsync = x1DummyRepo.st.futureRandom();
  }

  // ----- ----- ----- ----- -----

  streamSubs() => x1DummyRepo.st
      .streamIncrease()
      .listen((event) => dt.rmIntStream.st = event);

  start() {
    stop();
    dt.rmIntStream.subscription = streamSubs();
    dt.rmSubsStatus.st = 'start';
  }

  stop() {
    dt.rmIntStream.subscription!.cancel();
    dt.rmSubsStatus.st = 'stop';
  }

  pause() {
    dt.rmIntStream.subscription!.pause();
    dt.rmSubsStatus.st = 'pause';
  }

  resume() {
    dt.rmIntStream.subscription!.resume();
    dt.rmSubsStatus.st = 'resume';
  }
}
