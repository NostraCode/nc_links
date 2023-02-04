part of '_index.dart';

class HomeCtrl {
  HomeData get dt => Data.home.st;

  init() => logxx.i(HomeCtrl, '...');

  togglePanel(int index) {
    if (!dt.listOfStatus[index].st) {
      for (var element in dt.listOfStatus) {
        element.refresh();
      }
    }
    dt.listOfStatus[index].toggle();
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
      dt.rxSwitch.st = false;
    } else {
      showDebugBtn(context);
      dt.rxSwitch.st = true;
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
