part of '_index.dart';

class ConnectionMock implements ConnRepo {
  @override
  Future<ConnectivityResult> getResult() async {
    return Future.value(ConnectivityResult.wifi);
  }
}
