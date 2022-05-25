part of '_index.dart';

final x1LoginCtrl = LoginCtrl();

class LoginCtrl {
  LoginData get dt => x1LoginData.st;

  init() => logxx.i(LoginCtrl, '...');

  tooglePwdA() => dt.rxIsObscuredPwd.toggle();

  signInViaEmail() {
    dt.rxForx.submit();
    logx.wtf(dt.rxEmail.value);
    logx.wtf(dt.rxPwd.value);
  }

  signInViaGoogle() {
    dt.rxForx.submit();
    logx.wtf(dt.rxEmail.value);
    logx.wtf(dt.rxPwd.value);
  }
}
