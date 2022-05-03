part of '_index.dart';

final x1LoginCtrl = LoginCtrl();

class LoginCtrl {
  LoginData get dt => x1LoginData.st;

  init() => loggerx(LoginCtrl).v('init...');

  tooglePwdA() => dt.rmIsObscuredPwd.toggle();

  signInViaEmail() {
    dt.rmForm.submit();
    logger.wtf(dt.rmEmail.value);
    logger.wtf(dt.rmPwd.value);
  }

  signInViaGoogle() {
    dt.rmForm.submit();
    logger.wtf(dt.rmEmail.value);
    logger.wtf(dt.rmPwd.value);
  }
}
