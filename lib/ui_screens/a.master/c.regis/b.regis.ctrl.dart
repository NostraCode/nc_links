part of '_index.dart';

class RegisCtrl {
  RegisData get dt => Data.regis.st;

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
