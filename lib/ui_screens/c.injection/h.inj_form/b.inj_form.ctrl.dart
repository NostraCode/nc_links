part of '_index.dart';

final x1InjFormCtrl = InjFormCtrl();

class InjFormCtrl {
  InjFormData get dt => x1InjFormData.st;

  init() => logxx.i(InjFormCtrl, '...');

  submit() async {
    dt.rxForx.submit();
    logx.i(dt.rxEmail.value);
    logx.i(dt.rxPassword.value);
  }
}
