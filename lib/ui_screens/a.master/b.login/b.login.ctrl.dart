part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  tooglePwdA() => _dt.rxIsObscuredPwd.toggle();

  submit() => _dt.rxForm.submit();

  Future<void> signInWithEmailAndPassword() async {
    final email = _dt.rxEmail.value;
    final password = _dt.rxPwd.value;
    try {
      await Serv.auth.signInWithEmailAndPassword(email, password);
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      Fun.showOverlayLoading();
      await Serv.auth.signInWithGoogle();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
