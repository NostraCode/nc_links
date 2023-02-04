part of '_index.dart';

class InjFormCtrl {
  InjFormData get dt => Data.injForm.st;

  init() => logxx.i(InjFormCtrl, '...');

  submit() async {
    dt.rxForx.submit();
    logx.i(dt.rxEmail.value);
    logx.i(dt.rxPassword.value);
  }
}
