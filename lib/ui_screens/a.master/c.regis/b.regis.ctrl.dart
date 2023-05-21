part of '_index.dart';

class RegisCtrl {
  RegisData get dt => Data.regis.st;

  init() => logxx.i(RegisCtrl, '...');

  tooglePwdA() => dt.rxIsObscuredPwdA.toggle();

  tooglePwdB() => dt.rxIsObscuredPwdB.toggle();

  submit() => dt.rxForm.submit();

  Future<void> createUserWithEmailAndPassword() async {
    final email = dt.rxEmail.value;
    final password = dt.rxPwdA.value;
    try {
      await Serv.auth.createUserWithEmailAndPassword(email, password);
      Dialogs.success(
        titlex: 'Registration Success',
        messagex: 'Check your email for verification.',
        labelx: 'to login page',
        function: () => nav.toAndRemoveUntil(Routes.login),
      );
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
