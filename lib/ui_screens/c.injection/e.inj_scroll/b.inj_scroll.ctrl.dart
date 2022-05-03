part of '_index.dart';

final x1InjScrollCtrl = InjScrollCtrl();

class InjScrollCtrl {
  InjScrollData get dt => x1InjScrollData.st;

  init() => loggerx(InjScrollCtrl).v('init...');

  scrollToTop() {
    dt.fmScroll.controller.animateTo(
      0,
      duration: 400.milliseconds,
      curve: Curves.easeIn,
    );
  }
}
