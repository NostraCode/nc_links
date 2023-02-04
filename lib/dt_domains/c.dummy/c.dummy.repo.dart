part of '_index.dart';

class DummyRepo {
  Stream<int> streamIncrease() {
    return Stream.periodic(
      const Duration(seconds: 1),
      (count) => count,
    );
  }

  // ----- ----- ----- ----- -----

  Future<int> futureInit() async {
    try {
      return await x1DummySource.st.futureInit();
    } catch (e) {
      Fun.handleDummyException(e);
      return 0;
    }
  }

  Future<int> futureIncrease(int val) async {
    try {
      return await x1DummySource.st.futureIncrease(val);
    } catch (e) {
      Fun.handleDummyException(e);
      return 0;
    }
  }

  Future<int> futureRandom() async {
    try {
      return await x1DummySource.st.futureRandom();
    } catch (e) {
      Fun.handleDummyException(e);
      return 0;
    }
  }
}
