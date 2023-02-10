part of '_index.dart';

class ConnRepoMock implements ConnRepo {
  @override
  Future<ConnectivityResult> getResult() async {
    return Future.value(ConnectivityResult.wifi);
  }
}
