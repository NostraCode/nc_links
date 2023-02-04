part of '_index.dart';

class LoginCtrl {
  LoginData get dt => Data.login.st;

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
