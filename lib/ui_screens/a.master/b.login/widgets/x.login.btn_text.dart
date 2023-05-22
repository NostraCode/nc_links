part of '../_index.dart';

class LoginBtnText extends StatelessWidget {
  final Function() function;
  final String label;
  const LoginBtnText({
    Key? key,
    required this.function,
    required this.label,
  }) : super(key: key);

  LoginCtrl get ct => Ctrl.login;
  LoginData get dt => Data.login.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        onPressed: function,
        child: Text(label),
      ),
    );
  }
}
