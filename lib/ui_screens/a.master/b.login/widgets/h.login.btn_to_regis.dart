part of '../_index.dart';

class LoginBtnToRegis extends StatelessWidget {
  const LoginBtnToRegis({Key? key}) : super(key: key);

  LoginCtrl get ct => x1LoginCtrl;
  LoginData get dt => x1LoginData.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        child: const Text('don\'t have any account?'),
        onPressed: () => nav.toReplacement(Routes.regis),
      ),
    );
  }
}
