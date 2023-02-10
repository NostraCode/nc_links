part of '_index.dart';

class InjScrollCtrl {
  InjScrollData get dt => Data.injScroll.st;

  init() => logxx.i(InjScrollCtrl, '...');

  scrollToTop() {
    dt.fmScroll.controller.animateTo(
      0,
      duration: 400.milliseconds,
      curve: Curves.easeIn,
    );
  }
}
