part of '_index.dart';

class ForgetCtrl {
  ForgetData get dt => Data.forget.st;

  init() => logxx.i(ForgetCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  submit() => dt.rxForm.submit();

  Future<void> sendPasswordResetEmail() async {
    final email = dt.rxEmail.value;
    try {
      await Serv.auth.sendPasswordResetEmail(email);
      Dialogs.success(
        titlex: 'Success',
        messagex: 'Check email to reset your password.',
        labelx: 'to login page',
        function: () => nav.toAndRemoveUntil(Routes.login),
      );
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
