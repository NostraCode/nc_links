part of '_index.dart';

final x1RegisCtrl = RegisCtrl();

class RegisCtrl {
  RegisData get dt => x1RegisData.st;

  init() => logxx.i(RegisCtrl, '...');

  tooglePwdA() => dt.rxIsObscuredPwdA.toggle();

  tooglePwdB() => dt.rxIsObscuredPwdB.toggle();

  register() async {
    dt.rxForx.submit();
    logx.wtf(dt.rxEmail.value);
    logx.wtf(dt.rxPwdA.value);
    logx.wtf(dt.rxPwdB.value);
  }
}
