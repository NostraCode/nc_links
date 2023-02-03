part of '_index.dart';

final x1ConnRepo = RM.inject<ConnRepo>(() => ConnRepo());

class ConnRepo {
  Future<ConnectivityResult> getResult() async {
    return x1ConnProv.st.connx.checkConnectivity();
  }
}
