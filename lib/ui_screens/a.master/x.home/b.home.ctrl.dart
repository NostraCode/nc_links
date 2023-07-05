part of '_index.dart';

class HomeCtrl {
  init() => logxx.i(HomeCtrl, '...');

  togglePanel(int index) {
    if (!_dt.listOfStatus[index].st) {
      for (var element in _dt.listOfStatus) {
        element.refresh();
      }
    }
    _dt.listOfStatus[index].toggle();
  }

  taptestLogx() {
    logx.wtf('logx wtf');
    logx.i('logx info');
    logx.s('logx success');
    logx.w('logx warning');
    logx.e('logx error');
    logxx.wtf(HomeCtrl, 'logxx wtf');
    logxx.i(HomeCtrl, 'logxx info');
    logxx.s(HomeCtrl, 'logxx success');
    logxx.w(HomeCtrl, 'logxx warning');
    logxx.e(HomeCtrl, 'logxx error');
  }

  toogleSwitch(BuildContext context) {
    if (debugBtnIsShow()) {
      dismissDebugBtn();
      _dt.rxSwitch.st = false;
    } else {
      showDebugBtn(context);
      _dt.rxSwitch.st = true;
    }
  }

  showDioLog(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HttpLogListWidget(),
      ),
    );
  }
}
