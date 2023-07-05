part of '_index.dart';

class ConnServ {
  init() {
    logxx.i(ConnServ, '...');
    check();
    _pv.subsConnx = _pv.connx.onConnectivityChanged.listen((result) => updateIsOnline(result));
  }

  close() => _pv.subsConnx.cancel();

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
    _pv.rxIsOnline.st = !(result == ConnectivityResult.none);
    logxx.wtf(ConnServ, '$result');
    updateNotification();
  }

  updateNotification() async {
    await Future.delayed(
      _pv.rxIsOnline.st ? 2000.milliseconds : 100.milliseconds,
    );
    _pv.rxIsShowNotification.st = !_pv.rxIsOnline.st;
  }
}
