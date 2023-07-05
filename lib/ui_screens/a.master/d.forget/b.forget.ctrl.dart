part of '_index.dart';

class ForgetCtrl {
  init() => logxx.i(ForgetCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  submit() => _dt.rxForm.submit();

  Future<void> sendPasswordResetEmail() async {
    final email = _dt.rxEmail.value;
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
