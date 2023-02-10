part of '_index.dart';

class ConnRepo {
  Future<ConnectivityResult> getResult() async {
    return Prov.conn.st.connx.checkConnectivity();
  }
}
