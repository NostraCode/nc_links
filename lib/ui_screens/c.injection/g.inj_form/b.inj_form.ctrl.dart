part of '_index.dart';

final x1InjFormCtrl = InjFormCtrl();

class InjFormCtrl {
  InjFormData get dt => x1InjFormData.st;

  init() => loggerx(InjFormCtrl).v('init...');

  submit() async {
    dt.rmForm.submit();
    logger.wtf(dt.rmEmail.value);
    logger.wtf(dt.rmPassword.value);
  }
}
