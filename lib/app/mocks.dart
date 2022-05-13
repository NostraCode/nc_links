part of '_index.dart';

class Mocks {
  static inject() {
    x1DummyRepo.injectMock(() => DummyRepoMock());
  }
}
