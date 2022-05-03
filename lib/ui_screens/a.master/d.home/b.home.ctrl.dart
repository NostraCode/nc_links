part of '_index.dart';

final x1HomexCtrl = HomeCtrl();

class HomeCtrl {
  HomeData get dt => x1HomeData.st;

  init() => loggerx(HomeCtrl).v('init...');

  togglePanel(int index) {
    if (!dt.listOfStatus[index].st) {
      for (var element in dt.listOfStatus) {
        element.refresh();
      }
    }
    dt.listOfStatus[index].toggle();
  }

  taptestLogger() {
    logger.e('message on level error');
    logger.v('message on level verbose');
    logger.w('message on level warning');
    logger.i('message on level info');
    logger.d('message on level debug');
    logger.wtf('message on level wtf');
    loggerx(HomeCtrl).v('logger with classname');
  }

  tapAlice() {
    x1HttpAlice.showInspector();
  }
}
