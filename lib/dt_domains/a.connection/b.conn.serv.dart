part of '_index.dart';

class ConnServ {
  ConnProv get pv => Prov.conn.st;

  init() {
    logxx.i(ConnServ, '...');
    check();
    pv.subsConnx = pv.connx.onConnectivityChanged.listen((result) => updateIsOnline(result));
  }

  close() => pv.subsConnx.cancel();

  check() async {
    try {
      final result = await Repo.conn.st.getResult();
      updateIsOnline(result);
    } on PlatformException catch (e) {
      logxx.e(ConnServ, 'Couldn\'t check connectivity status. ${e.toString()}');
      return;
    }
  }

  updateIsOnline(ConnectivityResult result) {
    pv.rxIsOnline.st = !(result == ConnectivityResult.none);
    logxx.wtf(ConnServ, '$result');
    updateNotification();
  }

  updateNotification() async {
    await Future.delayed(
      pv.rxIsOnline.st ? 2000.milliseconds : 100.milliseconds,
    );
    pv.rxIsShowNotification.st = !pv.rxIsOnline.st;
  }
}
