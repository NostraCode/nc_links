part of '_index.dart';

final x1HomexCtrl = HomeCtrl();

class HomeCtrl {
  HomeData get dt => x1HomeData.st;

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
    logx.i('message of info');
    logx.s('message of success');
    logx.w('message of warning');
    logx.e('message of error');
    logx.wtf('message of wtf');
    logxx.wtf(HomeCtrl, 'logxx with classname (double x)');
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
