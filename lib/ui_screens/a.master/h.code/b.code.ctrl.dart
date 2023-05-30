part of '_index.dart';

class CodeCtrl {
  CodeData get dt => Data.code.st;

  init() => logxx.i(CodeCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  submitCode() => dt.rxFormCode.submit();

  Future<void> confirmCode() async {
    try {
      Fun.showOverlayLoading();
      await Serv.auth.confirmSmsCode(dt.rxCode.st.value);
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
