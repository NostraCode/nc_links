part of '_index.dart';

final x1ConnServ = ConnServ();

class ConnServ {
  ConnData get dt => x1ConnData.st;

  init() {
    logxx.i(ConnServ, '...');
    check();
    dt.subsConnx = dt.connx.onConnectivityChanged
        .listen((result) => updateIsOnline(result));
  }

  close() => dt.subsConnx.cancel();

  check() async {
    try {
      final result = await x1ConnRepo.st.getResult();
      updateIsOnline(result);
    } on PlatformException catch (e) {
      logxx.e(ConnServ, 'Couldn\'t check connectivity status. ${e.toString()}');
      return;
    }
  }

  updateIsOnline(ConnectivityResult result) {
    dt.rxIsOnline.st = !(result == ConnectivityResult.none);
    logxx.wtf(ConnServ, '$result');
    updateNotification();
  }

  updateNotification() async {
    await Future.delayed(
      dt.rxIsOnline.st ? 2000.milliseconds : 100.milliseconds,
    );
    dt.rxIsShowNotification.st = !dt.rxIsOnline.st;
  }
}
