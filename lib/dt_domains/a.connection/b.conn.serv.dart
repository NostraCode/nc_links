part of '_index.dart';

final x1ConnServ = ConnServ();

class ConnServ {
  ConnData get dt => x1ConnData.st;

  init() {
    loggerx(ConnServ).v('init...');
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
      loggerx(ConnServ).e('Couldn\'t check connectivity status', e);
      return;
    }
  }

  updateIsOnline(ConnectivityResult result) {
    dt.rmIsOnline.st = !(result == ConnectivityResult.none);
    loggerx(ConnServ).wtf('$result');
    updateNotification();
  }

  updateNotification() async {
    await Future.delayed(
      dt.rmIsOnline.st ? 2000.milliseconds : 100.milliseconds,
    );
    dt.rmIsShowNotification.st = !dt.rmIsOnline.st;
  }
}
