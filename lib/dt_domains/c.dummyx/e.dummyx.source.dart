part of '_index.dart';

final dummySource = RM.inject<XdummySource>(() => XdummySource());

class XdummySource {
  Future<int> futureInit() async {
    await Future.delayed(1000.milliseconds);
    return 0;
  }

  Future<int> futureIncrease(int val) async {
    if (val == 2) {
      throw IncreaseException('''
Exception on increase future
value == 2
''');
    } else {
      await Future.delayed(1000.milliseconds);
      return val + 1;
    }
  }

  Future<int> futureRandom() async {
    final val = Random().nextInt(100);
    if (val > 50) {
      throw RandomException('''
Exception on random future
value > 50''');
    } else {
      await Future.delayed(1500.milliseconds);
      return val;
    }
  }
}
