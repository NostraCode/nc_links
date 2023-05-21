part of '_index.dart';

class LoginCtrl {
  LoginData get dt => Data.login.st;

  init() => logxx.i(LoginCtrl, '...');

  tooglePwdA() => dt.rxIsObscuredPwd.toggle();

  submit() => dt.rxForm.submit();

  Future<void> signInWithEmailAndPassword() async {
    final email = dt.rxEmail.value;
    final password = dt.rxPwd.value;
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
