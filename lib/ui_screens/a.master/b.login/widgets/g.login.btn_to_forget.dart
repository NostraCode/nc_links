part of '../_index.dart';

class LoginBtnToForget extends StatelessWidget {
  const LoginBtnToForget({Key? key}) : super(key: key);

  LoginCtrl get ct => Ctrl.login;
  LoginData get dt => Data.login.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        child: const Text('forget password'),
        onPressed: () => nav.toReplacement(Routes.forget),
      ),
    );
  }
}
