part of '_index.dart';

final x1RegisCtrl = RegisCtrl();

class RegisCtrl {
  RegisData get dt => x1RegisData.st;

  init() => loggerx(RegisCtrl).v('init...');

  tooglePwdA() => dt.rmIsObscuredPwdA.toggle();

  tooglePwdB() => dt.rmIsObscuredPwdB.toggle();

  register() async {
    dt.rmForm.submit();
    logger.wtf(dt.rmEmail.value);
    logger.wtf(dt.rmPwdA.value);
    logger.wtf(dt.rmPwdB.value);
  }
}
