part of '../_index.dart';

class LoginBtnSubmit extends StatelessWidget {
  const LoginBtnSubmit({Key? key}) : super(key: key);

  LoginCtrl get ct => Ctrl.login;
  LoginData get dt => Data.login.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: OutlinedButton(
        child: const Text('SIGN IN'),
        onPressed: () => ct.signInViaEmail(),
      ),
    );
  }
}
