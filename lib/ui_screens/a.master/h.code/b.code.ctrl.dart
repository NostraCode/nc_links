part of '_index.dart';

class CodeCtrl {
  init() => logxx.i(CodeCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  submitCode() => _dt.rxFormCode.submit();

  Future<void> confirmCode() async {
    try {
      Fun.showOverlayLoading();
      await Serv.auth.confirmSmsCode(_dt.rxCode.st.value);
    } catch (obj) {
      nav.back();
      Fun.handleException(obj);
    }
  }
}
