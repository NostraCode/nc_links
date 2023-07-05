part of '_index.dart';

class InjScrollCtrl {
  init() => logxx.i(InjScrollCtrl, '...');

  scrollToTop() {
    _dt.fmScroll.controller.animateTo(
      0,
      duration: 400.milliseconds,
      curve: Curves.easeIn,
    );
  }
}
