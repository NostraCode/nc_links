part of '_index.dart';

class Mocks {
  static inject() {
    Repo.dummy.injectMock(() => DummyRepoMock());
  }
}
