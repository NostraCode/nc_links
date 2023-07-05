part of '_index.dart';

class RegisCtrl {
  init() => logxx.i(RegisCtrl, '...');

  tooglePwdA() => _dt.rxIsObscuredPwdA.toggle();

  tooglePwdB() => _dt.rxIsObscuredPwdB.toggle();

  submit() => _dt.rxForm.submit();

  Future<void> createUserWithEmailAndPassword() async {
    final email = _dt.rxEmail.value;
    final password = _dt.rxPwdA.value;
    try {
      await Serv.auth.createUserWithEmailAndPassword(email, password);
      // Dialogs.success(
      //   titlex: 'Registration Success',
      //   messagex: 'Check your email for verification.',
      //   labelx: 'to login page',
      //   function: () => nav.toAndRemoveUntil(Routes.login),
      // );
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
