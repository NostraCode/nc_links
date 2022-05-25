part of '_index.dart';

class DummyRepoMock implements DummyRepo {
  @override
  Stream<int> streamIncrease() {
    return Stream.value(1);
  }

  // ----- ----- ----- ----- -----

  @override
  Future<int> futureInit() {
    return Future.value(0);
  }

  @override
  Future<int> futureIncrease(int val) {
    return Future.value(1);
  }

  @override
  Future<int> futureRandom() {
    return Future.value(234);
  }
}
