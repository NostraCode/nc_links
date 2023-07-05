part of '_index.dart';

class InjFormCtrl {
  init() => logxx.i(InjFormCtrl, '...');

  submit() async {
    _dt.rxForx.submit();
    logx.i(_dt.rxEmail.value);
    logx.i(_dt.rxPassword.value);
  }
}
